//
//  EmailTableViewCell.swift
//  xibTable
//
//  Created by Admin on 27.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class EmailPasswordTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewPassword: UIImageView!
    @IBOutlet weak var imageViewEmail: UIImageView!
    
    @IBOutlet weak var textFieldEmail: UITextField! {
        didSet{   textFieldEmail.delegate = self}
    }
    @IBOutlet weak var textFieldLogin: UITextField! {
        didSet {textFieldLogin.delegate = self }
    }
    
    static var nib : UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier : String {
        return String(describing: self)
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
        textFieldEmail.resignFirstResponder()
        textFieldLogin.resignFirstResponder()
        print("touch onother")
    }
    
    
}


extension EmailPasswordTableViewCell: UITextFieldDelegate {
    
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

