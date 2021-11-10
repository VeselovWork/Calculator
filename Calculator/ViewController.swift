//
//  ViewController.swift
//  Calculator
//
//  Created by Andrey on 09.11.2021.
//

import UIKit
import SnapKit


class ViewController: UIViewController, UITableViewDelegate{
    
    var MyTextField = UITextField ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button_1 = UIButton (type: .system) as UIButton
        button_1.backgroundColor = .blue
        button_1.setTitle("1", for: .normal)
        button_1.frame = CGRect(x: 5, y: 400, width: 100, height: 100)
        button_1.layer.cornerRadius = 20
        
        self.view.addSubview(button_1)
        
        let button_2 = UIButton (type: .system) as UIButton
        button_2.backgroundColor = .blue
        button_2.setTitle("2", for: .normal)
        button_2.frame = CGRect(x: 106, y: 400, width: 100, height: 100)
        button_2.layer.cornerRadius = 20
        
        self.view.addSubview(button_2)
        
        let button_3 = UIButton (type: .system) as UIButton
        button_3.backgroundColor = .blue
        button_3.setTitle("3", for: .normal)
        button_3.frame = CGRect(x: 207, y: 400, width: 100, height: 100)
        button_3.layer.cornerRadius = 20
        
        self.view.addSubview(button_3)
        
        
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        MyTextField = UITextField(frame: textFieldFrame)
        MyTextField.borderStyle = UITextField.BorderStyle.roundedRect
        MyTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        MyTextField.textAlignment = .center
        MyTextField.placeholder = "enter"
        MyTextField.center = self.view.center
        
        self.view.addSubview(MyTextField)
        
        
        
        
       
        
        
        
   
    }

}
