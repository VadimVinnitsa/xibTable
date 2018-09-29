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
        setupNavigationItem()
        registerCell()
  
        setup()
        
    }
    
    func setup() {
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    @objc func keyboardShow() {
        print("keyboardShow")
    }
    @objc func keyboardHide() {
        print("keyboardHide")
    }
    
    
    func registerCell() {
        tableView.register(WelcomeTableViewCell.nib, forCellReuseIdentifier: WelcomeTableViewCell.identifier)
        tableView.register(LoginFacebookTableViewCell.nib, forCellReuseIdentifier: LoginFacebookTableViewCell.identifier)
        tableView.register(OrTableViewCell.nib, forCellReuseIdentifier:  OrTableViewCell.identifier)
        tableView.register(EmailPasswordTableViewCell.nib, forCellReuseIdentifier: EmailPasswordTableViewCell.identifier)
        tableView.register(ForgottenTableViewCell.nib, forCellReuseIdentifier: ForgottenTableViewCell.identifier)
      }
    
    func setupNavigationItem() {
        self.navigationController?.navigationBar.barTintColor  = #colorLiteral(red: 0.01049180888, green: 0.6962119937, blue: 0.5805589557, alpha: 1)
        //   self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.01049180888, green: 0.6962119937, blue: 0.5805589557, alpha: 1)
        
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("  LOGIN  ", for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.tintColor = .white
        loginButton.alpha = 0.5
        loginButton.layer.borderColor = loginButton.tintColor.cgColor
        loginButton.layer.cornerRadius = 2
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: loginButton)
        
        let backButton = UIButton(type: .system)
        backButton.setBackgroundImage(UIImage(named: "back"), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 5 {
            return 300
        }
        return 100
        
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
        cell.textFieldEmail.placeholder = "Email"
        return cell
            
        case 4: let cell = tableView.dequeueReusableCell(withIdentifier: EmailPasswordTableViewCell.identifier, for: indexPath) as! EmailPasswordTableViewCell
        cell.textFieldEmail.isEnabled = false
        cell.textFieldEmail.isHidden = true
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



