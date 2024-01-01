//
//  GiveFeedBackViewController.swift
//  E-Police Station
//
//  Created by Apple on 01/01/24.
//

import UIKit

class GiveFeedBackViewController: UIViewController {
    
    @IBOutlet weak var TXT1: UITextField!
    @IBOutlet weak var TXT2: UITextField!
    @IBOutlet weak var TXT3: UITextField!
    @IBOutlet weak var TXT4: UITextField!
    
    
    @IBAction func SubmitFeedBackBTN(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Edits_Text_Fields()
    }
    private func ApplyTextFieldStyles(to textField: UITextField) {
        textField.layer.cornerRadius = 20
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 0.7

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    private func Edits_Text_Fields(){
        ApplyTextFieldStyles(to: TXT1)
        ApplyTextFieldStyles(to: TXT2)
        ApplyTextFieldStyles(to: TXT3)
        ApplyTextFieldStyles(to: TXT4)
        
    }
}
