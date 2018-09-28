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
        setupNavigationItem()
        registerCell()
        
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
    }
    
    
    func registerCell() {
        tableView.register(WelcomeTableViewCell.nib, forCellReuseIdentifier: WelcomeTableViewCell.identifier)
        tableView.register(LoginFacebookTableViewCell.nib, forCellReuseIdentifier: LoginFacebookTableViewCell.identifier)
        tableView.register(OrTableViewCell.nib, forCellReuseIdentifier:  OrTableViewCell.identifier)
        tableView.register(EmailPasswordTableViewCell.nib, forCellReuseIdentifier: EmailPasswordTableViewCell.identifier)
        tableView.register(ForgottenTableViewCell.nib, forCellReuseIdentifier: ForgottenTableViewCell.identifier)
        
    }
    
  func setupNavigationItem() {
  //  self.navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
    
    self.navigationController?.navigationBar.barTintColor  = .red
    //sdfdasfs
    var d = 10
    var ddf = 20
    var df = 555
        let loginButton = UIButton(type: .system)
        loginButton.setBackgroundImage(UIImage(named: "login"), for: .normal)
      loginButton.frame = CGRect(x: 0, y: 0, width: 30, height: 53)
    
   //     loginButton.tintColor = UIColor.white
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: loginButton)
        
        let backButton = UIButton(type: .system)
    
  backButton.setBackgroundImage(UIImage(named: "back"), for: .normal)
  //  backButton.backgroundColor = .red
    backButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    //    backButton.tintColor = UIColor.white
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    
    
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 5 {
            return 300
        }
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
