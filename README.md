# My Day
### 기분에 따라 명언을 띄워주는 일기장
---
### 1.  개발 목표
+ 모바일앱프로그래밍 수업을 수강하며 과제로 제출하고자 한다.
+ 기초 지식을 쌓는다.

### 2.  개발 언어
+ Swift 


### 3.  개발 툴
+ Xcode 

### 4.  최적화 디바이스
+ iPhone XR/XS Max/11/11 Pro Max  


### 5.  주요 기능
+ 선택한 기분에 따라 랜덤한 명언 띄워주기  - 기분별로 배열에 저장되어있는 명언 중 랜덤한 Index값을 띄워준다.

### 6.  스크린샷
<img src="https://user-images.githubusercontent.com/63438947/130264430-8a90d2bf-4639-4c08-9744-d81f7be5b0df.png" width="30%">  <img src="https://user-images.githubusercontent.com/63438947/130264482-4f561586-d04c-45d8-bbad-b4c1b03299a1.png" width="30%">  <img src="https://user-images.githubusercontent.com/63438947/130264498-95549b74-8587-4530-bc94-29a8766b28a9.png" width="30%">  <img src="https://user-images.githubusercontent.com/63438947/130264551-cb9b07e0-a0b4-4a1b-b6bd-938576af28f3.png" width="30%">   <img src="https://user-images.githubusercontent.com/63438947/130264574-209936ab-c4d3-4569-9442-73995a7d22ab.png" width="30%">   



### 7.  주요 개발 사항
+ 배열 중 랜덤한 인덱스의 값을 출력

```Swift
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            let resultVC = segue.destination as! ViewController
            let feelingScore: Int = feelingSegController.selectedSegmentIndex
            resultVC.weather = weatherSegController.selectedSegmentIndex
            resultVC.write = todayComentLabel.text
            resultVC.emotion = feelingScore
            
            if feelingScore == 0{
                
                resultVC.advise = happy[Int(arc4random_uniform(UInt32(happy.count)))]
            }
            else if feelingScore == 1{
                resultVC.advise = soso[Int(arc4random_uniform(UInt32(soso.count)))]
            }
            else if feelingScore == 2{
                resultVC.advise = sad[Int(arc4random_uniform(UInt32(sad.count)))]
            }
            else if feelingScore == 3{
                resultVC.advise = angry[Int(arc4random_uniform(UInt32(angry.count)))]
            }
            else{
                resultVC.advise = happy[Int(arc4random_uniform(UInt32(happy.count)))]
            }
        }
        
    }
```


