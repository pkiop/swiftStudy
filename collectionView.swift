//
//  ViewController.swift
//  collectionView
//
//  Created by 박상신 on 2020/06/09.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

/*
    story board 에서
    collection view -> 화면에 꽉차게 (constraint에서 상하좌우 다 0)
    사용할 cell 은 table view cell, collection view cell
 
    cell 사용하려면 클릭해서 identifier넣어줘야
 
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// 해당되는 protocol을 나눠서 쓸 수 있는 것 -> extension
// 원랜
// class ViewController: UIViewController, UICollectionViewDataSource {
// 이렇게 한번에 다하지만 이렇게 나눌수도 있다.
//작성다했으면 만든 collection View(not Cell) 드래그해서 storyboard 오른쪽 View Controller Scene-> ViewController에 드래그엔드롭해서 연결시킨다
// 여러개 뜨는 것 중 delegate, dataSource 두 개 해줘야
// View Controller right click -> Can see is connected
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20 // 갯수
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath)
        
        return cell
    }
}

// 안에 뭐 넣을지 생각안나면 cmd + protocol 클릭하면 그 선언으로 감
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // return CGSize(width: 50, height: 50) 절대값도 가능
        // 화면비례하려면
        //return CGSize(width: UIScreen.main.bounds.width / 2, height: 50)
        return CGSize(width: UIScreen.main.bounds.width / 3 - 2, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1 // 간격 값 return
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50 // 위아래 라인 간격
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
