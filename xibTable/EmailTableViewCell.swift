//
//  EmailTableViewCell.swift
//  xibTable
//
//  Created by Admin on 27.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class EmailTableViewCell: UITableViewCell {
 static let identifier = "EmailIdentifier"
   
  
    @IBOutlet weak var imageV: UIImageView!
    
    @IBOutlet weak var textFieldEmail: UITextField!
   
    @IBOutlet weak var textFieldLogin: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
