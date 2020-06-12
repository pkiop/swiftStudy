//
//  ViewController.swift
//  MLCore
//
//  Created by 박상신 on 2020/06/12.
//  Copyright © 2020 박상신. All rights reserved.
//

import Vision
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    
    var picker = UIImagePickerController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 이걸 해야 사진을 찍거나 받았을 때 사용할 수 있다.
        picker.delegate = self
        
    }


    // 사진 에러 원래 뜸
    // plist 에서 권한획득 메세지 꼭 만들어야 (Privacy - ... ) 안하면 앱스토어에서 reject 된다.
    @IBAction func showCamera(_ sender: Any) {
        picker.sourceType = .camera
        self.present(picker, animated: true, completion: nil)
    }
    @IBAction func openPhotoLibrary(_ sender: Any) {
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    func processImage(_ image: UIImage) {
        if let model = try? VNCoreMLModel(for: ImageClassifier().model) {
            
            // 적절한 수치값을 return
            let request = VNCoreMLRequest(model: model) { (request, error) in
                if let results = request.results as? [VNClassificationObservation] {// 머신러닝 모델 개수만큼 다 결과를 %를 보여준다.
                    let firstValue = results.sorted { (lh, rh) -> Bool in
                        //return lh.identifier // 보통 폴더이름으로 identify 한 것
                        return lh.confidence < rh.confidence // 오름차순
                    }.first // 이 중 첫번째값만
                    
                    if let bestMatch =  firstValue {
                        self.nameLabel.text = bestMatch.identifier
                        self.percentLabel.text = "\(bestMatch.confidence * 100) %"
                    }
                }
            }
            
            // image data 가져오기
            
            if let imageData = image.jpegData(compressionQuality: 0.7) {
                let handler = VNImageRequestHandler(data: imageData, options: [:]) // [:] dic 타입
                try? handler.perform([request])
            }
        } else {
            
        }
        
    }
}

// 사진을 찍거나 가져오면 활성화됨
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            self.imageView.image = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
}
