//
//  EmailTableViewCell.swift
//  xibTable
//
//  Created by Admin on 27.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: CustomTextField! {
        didSet {
            textField.delegate = self
        }
    }
    
 
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    //  hide keyboard when tapped not textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        textFieldEmail.resignFirstResponder()
//        textFieldLogin.resignFirstResponder()
        textField.resignFirstResponder()
        
//        if touches.first != nil {
//            contentView.endEditing(true)
//        }
//        super.touchesBegan(touches, with: event)
//
        print("touch onother")
    }

    
}


extension TextFieldTableViewCell: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        print("end editing")
    }
    
    //hide KeyBoard when pressed return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("should return")
        return true
    }
    
}

