//
//  LoginFacebookTableViewCell.swift
//  xibTable
//
//  Created by Admin on 27.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class LoginFacebookTableViewCell: UITableViewCell {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgottenButton: UIButton!
    static let identifier = "LoginFaceBookIdentifier"
    
    @IBOutlet weak var fLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        print("loginPressed")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("buttonPressed")
    }
}
