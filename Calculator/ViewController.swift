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
    
    func createButton(_ number: Int, x: Int, y: Int) -> UIButton {
        let unoButton = UIButton (type: .system) as UIButton
        unoButton.backgroundColor = .gray
        unoButton.setTitleColor(.white, for: .normal)
        unoButton.setTitle("\(number)", for: .normal)
        unoButton.frame = CGRect(x: x + 5, y: y + 0, width: 100, height: 100)
        unoButton.layer.cornerRadius = 20
        
        unoButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return unoButton
    }
    
    func textButton(_ number2: String, x: Int, y: Int) -> UIButton {
        let unoButton = UIButton (type: .system) as UIButton
        unoButton.setTitleColor(.white, for: .normal)
        unoButton.backgroundColor = .gray
        unoButton.setTitle("\(number2)", for: .normal)
        unoButton.frame = CGRect(x: x + 5, y: y + 0, width: 100, height: 100)
        unoButton.layer.cornerRadius = 20
        
        unoButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return unoButton
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let clearButton = UIButton (type: .system) as UIButton
        clearButton.backgroundColor = .blue
        clearButton.setTitle("Clear", for: .normal)
        clearButton.frame = CGRect(x: 110, y: 501, width: 100, height: 50)
        clearButton.layer.cornerRadius = 20
        
       clearButton.addTarget(self, action: #selector(ClearButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(clearButton)
        
       
        
        let textFieldFrame = CGRect(x: 50, y: 50, width: 200, height: 31)
        
        MyTextField = UITextField(frame: textFieldFrame)
        MyTextField.borderStyle = UITextField.BorderStyle.roundedRect
        MyTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        MyTextField.textAlignment = .center
        MyTextField.placeholder = "enter"
        // MyTextField.center = self.view.center
        
        
        self.view.addSubview(MyTextField)
        
        let numberOfCickle = 1...9
        var x = 0
        var y = 100
        
        for number1 in numberOfCickle{
            
            
            self.view.addSubview(createButton(number1,x: x ,y: y))
            
            
            if (number1 == 3 ) || (number1 == 6) {
                x = 0
                y = y + 105
            }else{
            
            x = x + 105
                }

        }
        
        self.view.addSubview(textButton("+",x: 0 ,y: 450))
        self.view.addSubview(textButton("-",x: 207 ,y: 450))
    }
    
    @objc private func buttonTapped(sender: UIButton) {
        MyTextField.text = sender.titleLabel?.text
       
    }
        
   @objc private func ClearButtonTapped() {
        MyTextField.text = "0"
       
       
   }
    
    
}

