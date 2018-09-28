//
//  OrTableViewCell.swift
//  xibTable
//
//  Created by Admin on 28.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class OrTableViewCell: UITableViewCell {

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
    
}
