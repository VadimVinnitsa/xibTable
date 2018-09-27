//
//  MainScreen.swift
//  xibTable
//
//  Created by Admin on 27.09.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MainScreen: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")
        registerCell()
        //rename
    }
    
    
    func registerCell() {
        let onlyLabelNib = UINib(nibName: "OnlyLabelTableViewCell", bundle: nil)
        let FaceBookNib = UINib(nibName: "LoginFacebookTableViewCell", bundle: nil)
        let emailNib = UINib(nibName: "EmailTableViewCell", bundle: nil)
        
        tableView.register(onlyLabelNib, forCellReuseIdentifier: OnlyLabelTableViewCell.identifier)
        tableView.register(FaceBookNib, forCellReuseIdentifier: LoginFacebookTableViewCell.identifier)
        tableView.register(emailNib, forCellReuseIdentifier: EmailTableViewCell.identifier)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "11")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        switch indexPath.row {
        case 0: let cell1 = tableView.dequeueReusableCell(withIdentifier: OnlyLabelTableViewCell.identifier, for: indexPath) as! OnlyLabelTableViewCell
        cell1.label.text = "Welcome Back"
        return cell1
            
        case 1: let cell1 = tableView.dequeueReusableCell(withIdentifier: LoginFacebookTableViewCell.identifier, for: indexPath) as! LoginFacebookTableViewCell
        cell1.forgottenButton.isHidden = true
        cell1.forgottenButton.isEnabled = false
        //        cell1.loginButton.isHidden = false
        //        cell1.loginButton.isEnabled = true
        return cell1
            
            
        //  case 2: cell = tableView.dequeueReusableCell(withIdentifier: OrTableViewCell.identifier, for: indexPath) as! OrTableViewCell
        case 2: let cell1 = tableView.dequeueReusableCell(withIdentifier: OnlyLabelTableViewCell.identifier, for: indexPath) as! OnlyLabelTableViewCell
        cell1.label.text = "-----OR------"
        
        return cell1
            
        case 3: let cell1 = tableView.dequeueReusableCell(withIdentifier: EmailTableViewCell.identifier, for: indexPath) as! EmailTableViewCell
        cell1.textFieldLogin.isEnabled = false
        cell1.textFieldLogin.isHidden = true
        cell1.imageViewPassword.isHidden = true
        
        cell1.textFieldEmail.placeholder = "email"
        return cell1
            
        case 4: let cell1 = tableView.dequeueReusableCell(withIdentifier: EmailTableViewCell.identifier, for: indexPath) as! EmailTableViewCell
                cell1.textFieldLogin.isEnabled = true
          cell1.textFieldLogin.isHidden = false
        cell1.imageViewEmail.isHidden = true
        cell1.textFieldLogin.placeholder = "Password"
        return cell1
     
        case 5: let cell1 = tableView.dequeueReusableCell(withIdentifier: LoginFacebookTableViewCell.identifier, for: indexPath) as! LoginFacebookTableViewCell
        cell1.loginButton.isHidden = true
        cell1.loginButton.isEnabled = false
        cell1.fLabel.isHidden = true
        return cell1
        default: return cell
        }
        
        
      //  return cell
    }
    
    
    
}
