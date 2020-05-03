//
//  ButtonCustom.swift
//  Project_100
//
//  Created by SWUCOMPUTER on 2020/05/02.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//
import UIKit

class UIRoundPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){ super.init(coder: aDecoder)!
        self.layer.cornerRadius = self.frame.height / 2
        self.backgroundColor = UIColor(red: 250/255, green: 218/255, blue: 10/255, alpha: 1
        )
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        

    }
    
}
