//
//  ViewController.swift
//  Calculator
//
//  Created by Andrey on 09.11.2021.
//

import UIKit
import SnapKit

enum ButtonType: String, CaseIterable {
    case one = "1"
    case two = "2"
    case tree = "3"
    case four = "4"
    case five = "5"
    case sex = "6"
    case seven = "7"
    case eit = "8"
    case nain = "9"
    case plus = "+"
    case minus = "-"
    case eq = "="
}

class ViewController: UIViewController, UITableViewDelegate{
    
    var MyTextField = UITextField ()
    
    func createButton(_ number: ButtonType, x: Int, y: Int) -> UIButton {
        
        let unoButton = UIButton (type: .system) as UIButton
        unoButton.backgroundColor = .gray
        unoButton.setTitleColor(.white, for: .normal)
        unoButton.setTitle(number.rawValue, for: .normal)
        unoButton.frame = CGRect(x: x + 5, y: y + 0, width: 100, height: 100)
        unoButton.layer.cornerRadius = 20
        
        switch number {
        case .plus:
            unoButton.addTarget(self, action: #selector(plusTapped), for: .touchUpInside)
        case .eq:
            unoButton.addTarget(self, action: #selector(eqTapped), for: .touchUpInside)
        case .minus:
            unoButton.addTarget(self, action: #selector(minusTapped), for: .touchUpInside)
        default:
            unoButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        
        
        return unoButton
    }
    
//    func textButton(_ number2: String, x: Int, y: Int) -> UIButton {
//        let unoButton = UIButton (type: .system) as UIButton
//        unoButton.setTitleColor(.white, for: .normal)
//        unoButton.backgroundColor = .gray
//        unoButton.setTitle("\(number2)", for: .normal)
//        unoButton.frame = CGRect(x: x + 5, y: y + 0, width: 100, height: 100)
//        unoButton.layer.cornerRadius = 20
//
//        unoButton.addTarget(self, action: #selector(PlusButtonTapped), for: .touchUpInside)
//        return unoButton
//    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let clearButton = UIButton (type: .system) as UIButton
        clearButton.backgroundColor = .blue
        clearButton.setTitle("Clear", for: .normal)
        clearButton.frame = CGRect(x: 110, y: 518, width: 100, height: 50)
        clearButton.layer.cornerRadius = 20
        
       clearButton.addTarget(self, action: #selector(ClearButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(clearButton)
        
//        let equalsButton = UIButton (type: .system) as UIButton
//        equalsButton.backgroundColor = .blue
//        equalsButton.setTitle("=", for: .normal)
//        equalsButton.frame = CGRect(x: 110, y: 450, width: 100, height: 50)
//        equalsButton.layer.cornerRadius = 20
//
//        equalsButton.addTarget(self, action: #selector(EqualsButtonTapped), for: .touchUpInside)
//
       // self.view.addSubview(equalsButton)

        let textFieldFrame = CGRect(x: 50, y: 50, width: 200, height: 31)
        
        MyTextField = UITextField(frame: textFieldFrame)
        MyTextField.borderStyle = UITextField.BorderStyle.roundedRect
        MyTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        MyTextField.textAlignment = .center
        MyTextField.placeholder = "enter"
       
        self.view.addSubview(MyTextField)

//        let numberOfCickle = 0...11
        var x = 0
        var y = 100
        
//        let massivName: [String] = ["7","8","9","4","5","6","1","2","3","+","-","="]
//
//        for number1 in numberOfCickle {
//
//
//            self.view.addSubview(createButton(ButtonType(rawValue: massivName[number1]) ,x: x ,y: y))
//
//
//            if (number1 == 2 ) || (number1 == 5)||(number1 == 8){
//                x = 0
//                y = y + 105
//            }else{
//
//            x = x + 105
//                }
//
//      }
        
        ButtonType.allCases.forEach({ buttonType in
            self.view.addSubview(createButton(buttonType, x: x, y: y))
            let number1 = Int(buttonType.rawValue)
            if (number1 == 3 ) || (number1 == 6)||(number1 == 9) {
                x = 0
                y = y + 105
            } else {
                x = x + 105
            }
        })
        
      //  self.view.addSubview(textButton("+",x: 0 ,y: 450))
      //  self.view.addSubview(textButton("-",x: 207 ,y: 450))
    }
    
    @objc private func buttonTapped(sender: UIButton) {
       // let MyTextFieldString: String? = String (MyTextField.text ?? "-")
       
        if mathSign == true {
            MyTextField.text = sender.titleLabel?.text
            mathSign = false
        }else {
            MyTextField.text = MyTextField.text! + (sender.titleLabel?.text)!
        }
        
        
        numberFromScreen = Double(MyTextField.text!)!
    }
        
   @objc private func ClearButtonTapped() {
        MyTextField.text = ""
   }
    
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var mathSign:Bool = false
    
    
    @objc private func plusTapped() {
       MyTextField.text = "+"
           
           
        }
    
    @objc private func minusTapped() {
        
            MyTextField.text = "-"
           
        }
    
    @objc private func eqTapped() {
        
            MyTextField.text = "="
           
        }
        
         
//        if (MyTextField.text != "0") {
//            firstNum = Double(MyTextField.text!)!
//
//            if ( MyTextField.text == "+") {
//                MyTextField.text = "+"
//
//
//            }else if (MyTextField.text == "Minus") {
//
//            }
//            //numberFromScreen = Double(MyTextField.text!)!
//
//
//        }
//        mathSign = true
//
  }
//    @objc  private func EqualsButtonTapped() {
//         MyTextField.text = "-"
//    }
    


