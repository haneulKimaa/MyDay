//
//  ModalViewController.swift
//  Project_100
//
//  Created by SWUCOMPUTER on 2020/05/02.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return todayArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return todayArray[row]
    }
    
    

    
    @IBOutlet var weatherSegController: UISegmentedControl!
    @IBOutlet var comentSegController: UISegmentedControl!
    
    @IBOutlet var writeText: UITextField!
    @IBOutlet var todaySelect: UIView!
    @IBOutlet var todayWrite: UIView!
    @IBOutlet var todayPicker: UIPickerView!
    @IBOutlet var todayComentLabel: UILabel!
    @IBOutlet var feelingSegController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todaySelect.isHidden = false
        todayWrite.isHidden = true
       
        // Do any additional setup after loading the view.
    }
    let todayArray: Array<String> = ["평소와 같았어", "오늘은 좀 힘들었어", "날씨가 좋았어", "기분 좋은 하루!", "내일을 위해", "열공!"]
    let happy: Array<String> = ["사람들의 행복을 조금씩 나누어 가졌다 생각이 되면 그냥 웃어주세요.", "마음의 상처는 혼자 견디어도 기쁨은 함께 나누어야 한다 - 엘버트 하버드", "남에게 조그마한 기쁨을 주는 것은 커다란 기쁨이다. (R. 후고)", "유쾌히 일하고 또 행한 일을 기뻐하는 자는 행복하다. (톨스토이)" ]
    let sad: Array<String> = ["시간이 지나면 괜찮아질 거야 모든 게 변하니까 삶도 파도처럼 널뛰며 좋아졌다 나빠졌다 반복할 거야 오늘 우울하면 내일 행복해지고, 내일 행복하다면 또 다시 우울해져도 돼 나를 사랑하기만 하자", "괜찮지 않은 날에도 아무일 없듯 살아내는 것. 그것 만으로도 우리는 대단한 일을 하고 있어요. 우울하면 우울한대로 행복하면 행복한대로 대견한 나를 사랑해주세요.", "거저 얻어지는 건 거의 없다. 어두운 곳의 빛이 더 밝고, 혹독한 겨울 뒤에 오는 봄이 유난히 따듯하다. 깨진 곳에 빛이 머물고, 깨진만큼 더 반짝인다.", "미워하지 마세요. 누구보다 가장 잘하고 싶었던 나의 마음이 담긴 오늘을", "절대 포기하지 마라.장벽에 부딪히거든,그것이 절실함을 나에게 물어보는 장치에 불과하다는 것을 잊지 마라.-랜디 포시"]
    let soso: Array<String> = ["간단함이 훌륭함의 열쇠다.-이소룡", "바람이 불지 않으면 노를 저어라.-윈스턴 처칠", "낭비한 시간에 대한 후회는 더 큰 시간 낭비이다.-메이슨 쿨리", "휴식은 게으름도, 멈춤도 아니다.-헨리 포드"]
    let angry: Array<String> = ["분노와 어리석은 행동은 나란히 길을 걷는다. 그리고 후회가 그 둘의 발굽을 문다. -벤저민 프랭클린", "격한 분노는 하루의 수명을 갖고 있을 뿐이다. 하지만 하루 동안 파괴한 것은 백년이 지나야 회복될 수 있다. -로망 롤랭", "화는 산(acid)과 같아서, 퍼붓는 대상보다는 그것이 담긴 그릇에 더 큰 피해를 줄 수 있다. -마하트마 간디"]
    
    @IBAction func getComent(_ sender: UIButton) {
        let coment:String = todayArray[self.todayPicker.selectedRow(inComponent: 0)]
        
        todayComentLabel.text = "' " + coment + " '"
    }
    @IBAction func getComentWrite(_ sender: UIButton) {
        var coment:String!
        if let todayWriteCustom = writeText.text{
            coment = todayWriteCustom
        }
        
        todayComentLabel.text = "' " + coment + " '"
    }
    @IBAction func segDataSave(_ sender: UISegmentedControl) {
           if sender == comentSegController{
               if sender.selectedSegmentIndex == 0{
                   todayWrite.isHidden = true
                   todaySelect.isHidden = false
               }
               else if sender.selectedSegmentIndex == 1{
                   todaySelect.isHidden = true
                   todayWrite.isHidden = false
               }
           }
       }
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
