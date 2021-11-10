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
        unoButton.backgroundColor = .red
        unoButton.setTitle("\(number)", for: .normal)
        unoButton.frame = CGRect(x: x + 5, y: y + 0, width: 100, height: 100)
        unoButton.layer.cornerRadius = 20
        
        unoButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return unoButton
    }

//    class AllButton {
//
//
//       public func createButton() {
//
//
//            let unoButton = UIButton (type: .system) as UIButton
//            unoButton.backgroundColor = .red
//            unoButton.setTitle("1", for: .normal)
//            unoButton.frame = CGRect(x: 5, y: 200, width: 100, height: 100)
//            unoButton.layer.cornerRadius = 20
//
//
//            unoButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//
//
//
//        }
//
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let button_1 = UIButton (type: .system) as UIButton
//        button_1.backgroundColor = .blue
//        button_1.setTitle("1", for: .normal)
//        button_1.frame = CGRect(x: 5, y: 400, width: 100, height: 100)
//        button_1.layer.cornerRadius = 20
//
//
//        button_1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//
//        self.view.addSubview(button_1)
//
//        let button_2 = UIButton (type: .system) as UIButton
//        button_2.backgroundColor = .blue
//        button_2.setTitle("2", for: .normal)
//        button_2.frame = CGRect(x: 106, y: 400, width: 100, height: 100)
//        button_2.layer.cornerRadius = 20
//
//        button_2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//
//        self.view.addSubview(button_2)
//
//        let button_3 = UIButton (type: .system) as UIButton
//        button_3.backgroundColor = .blue
//        button_3.setTitle("3", for: .normal)
//        button_3.frame = CGRect(x: 207, y: 400, width: 100, height: 100)
//        button_3.layer.cornerRadius = 20
//
//        button_3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//
//        self.view.addSubview(button_3)
//
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
//            if (number1 == 6 ) {
//                x = 0
//                y = y + 105
//            }
//            
        }

    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        MyTextField.text = sender.titleLabel?.text
       
    }
        
   @objc private func ClearButtonTapped() {
        MyTextField.text = "Clear"
       
       
   }
    
    
}

