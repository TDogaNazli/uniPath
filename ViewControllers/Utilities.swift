//
//  Utilities.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 15.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import Foundation
import UIKit

class Utilites{
    
    static func styleTextField( textfield:UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 255.0/255.0, green: 137.0/255.0, blue: 188.0/255.0, alpha: 1).cgColor
        textfield.borderStyle = .none
        textfield.layer.addSublayer(bottomLine)
    }
    static func styleFilledButton( button:UIButton){
        button.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    static func styleHollowButton(button:UIButton){
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
}
