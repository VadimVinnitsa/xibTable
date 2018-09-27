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
       
    }
    
    
    func registerCell() {
        let WelcomeNib = UINib(nibName: "WelcomeTableViewCell", bundle: nil)
        let FaceBookNib = UINib(nibName: "LoginFacebookTableViewCell", bundle: nil)
        let OrNib = UINib(nibName: "OrTableViewCell", bundle: nil)
        let emailNib = UINib(nibName: "EmailPasswordTableViewCell", bundle: nil)
        let forgottenNib = UINib(nibName: "ForgottenTableViewCell", bundle: nil)
        
        tableView.register(WelcomeNib, forCellReuseIdentifier: WelcomeTableViewCell.identifier)
        tableView.register(FaceBookNib, forCellReuseIdentifier: LoginFacebookTableViewCell.identifier)
        tableView.register(OrNib, forCellReuseIdentifier:  OrTableViewCell.identifier)
        tableView.register(emailNib, forCellReuseIdentifier: EmailPasswordTableViewCell.identifier)
        tableView.register(forgottenNib, forCellReuseIdentifier: ForgottenTableViewCell.identifier)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        switch indexPath.row {
        case 0: let cell = tableView.dequeueReusableCell(withIdentifier: WelcomeTableViewCell.identifier, for: indexPath) as! WelcomeTableViewCell
        return cell
            
        case 1: let cell = tableView.dequeueReusableCell(withIdentifier: LoginFacebookTableViewCell.identifier, for: indexPath) as! LoginFacebookTableViewCell
        return cell
   
        case 2: let cell = tableView.dequeueReusableCell(withIdentifier: OrTableViewCell.identifier, for: indexPath) as! OrTableViewCell
        return cell
            
        case 3: let cell = tableView.dequeueReusableCell(withIdentifier: EmailPasswordTableViewCell.identifier, for: indexPath) as! EmailPasswordTableViewCell
        cell.textFieldLogin.isEnabled = false
        cell.textFieldLogin.isHidden = true
        cell.imageViewPassword.isHidden = true
        
        cell.textFieldEmail.placeholder = "email"
        return cell
            
        case 4: let cell = tableView.dequeueReusableCell(withIdentifier: EmailPasswordTableViewCell.identifier, for: indexPath) as! EmailPasswordTableViewCell
                cell.textFieldLogin.isEnabled = true
          cell.textFieldLogin.isHidden = false
        cell.imageViewEmail.isHidden = true
        cell.textFieldLogin.placeholder = "Password"
        return cell
     
        case 5: let cell = tableView.dequeueReusableCell(withIdentifier: ForgottenTableViewCell.identifier, for: indexPath) as! ForgottenTableViewCell
        return cell
        default:
            return UITableViewCell()
        }
      
    }
    
}
