# unwind 

nav controller 로 화면 1의 버튼 누르면 화면2로, 화면2 버튼누르면 화면 3으로.  
이 상황에서 화면 3에서 화면 1로 가고싶으면, 화면 3에서 버튼누르면 화면 1로 보내면 안된다. 한번 더 쌓이기 때문  
이 때 unwind

돌아가고자 하는 ViewController에 function 하나 만들기

```swift
@IBAction func unwindMainVC(seque: UIStoryboardSegue) {
    //storyboard 상에서 연결시킬 준비 완료 이거 안만들면 Exit 으로 drag가 안된다.
}

```

작성하고 화면 3의 버튼누르고 오른쪽 Xcoe화면에 ViewController -> View -> Button 에서 드래그해서 Exit 으로 