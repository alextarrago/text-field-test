//
//  ViewController.swift
//  TextFieldTest
//
//  Created by Alex Tarragó on 7/28/15.
//  Copyright (c) 2015 DRIBBA DEVELOPMENT & CONSULTING. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.firstTextField {
            UIView.animateWithDuration(2, delay: 0, options: nil, animations: { () -> Void in
                self.secondTextField.frame = CGRectOffset(self.secondTextField.frame, 500, 0)
                }, completion: nil)
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == self.firstTextField {
            UIView.animateWithDuration(2, delay: 0, options: nil, animations: { () -> Void in
                self.secondTextField.frame = CGRectOffset(self.secondTextField.frame, -500, 0)
                }, completion: nil)
        }
        textField.resignFirstResponder()
        return true
    }


}

