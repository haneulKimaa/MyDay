//
//  ViewController.swift
//  Project_100
//
//  Created by SWUCOMPUTER on 2020/05/02.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let adviseText = advise{
            adviseLabel.text = adviseText
        }
        if let writeText = write{
            writeLabel.text = writeText
        }
        
        if let weatherImage = weather{
            if weatherImage == 0{
                weatherSelected.image = sunImage
            }
            else if weatherImage == 1{
                weatherSelected.image = cloudImage
            }
            else if weatherImage == 2{
                weatherSelected.image = rainyImage
            }
            else if weatherImage == 3{
                weatherSelected.image = snowImage
            }
            else if weatherImage == 4{
                weatherSelected.image = windImage
            }
        }
        if let emotionImage = emotion{
            if emotionImage == 0{
                emotionSelected.image = smileImage
            }
            else if emotionImage == 1{
                emotionSelected.image = sosoImage
            }
            else if emotionImage == 2{
                emotionSelected.image = sadImage
            }
            else if emotionImage == 3{
                emotionSelected.image = angryImage
            }
        }
        // Do any additional setup after loading the view.
    }

    @IBOutlet var writeLabel: UILabel!
    @IBOutlet var weatherSelected: UIImageView!
    @IBOutlet var emotionSelected: UIImageView!
    @IBOutlet var adviseLabel: UILabel!
    
    let sunImage = UIImage(named: "sun.png")
    let cloudImage = UIImage(named: "cloud.png")
    let snowImage = UIImage(named: "snowflake.png")
    let windImage = UIImage(named: "wind.png")
    let rainyImage = UIImage(named: "rainy.png")
    let smileImage = UIImage(named: "smileys.png")
    let sosoImage = UIImage(named: "soso.png")
    let angryImage = UIImage(named: "angry.png")
    let sadImage = UIImage(named: "sad.png")
    var advise: String?
    var write: String?
    var weather: Int?
    var emotion: Int?

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

