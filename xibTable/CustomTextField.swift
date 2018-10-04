//
//  TextFieldForCell.swift
//  xibTable
//
//  Created by Admin on 02/10/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {


//    textFieldEmail.leftViewMode = .always
//    textFieldEmail.leftView = UIImageView(image: UIImage(named: "email"))

    
    
    func addLeftImage(image: UIImage) {
        let viewSize = frame.height / 1.15
        let leftTraring : CGFloat = frame.height - viewSize
        
        //view
        let backroundView = UIView(frame: CGRect(x: 0, y: 0, width: viewSize + leftTraring * 2, height: viewSize))
        backroundView.backgroundColor = .clear
        
        //icon
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: viewSize, height: viewSize))
        imageView.image = image
        
        backroundView.addSubview(imageView)
        imageView.center = CGPoint(x: backroundView.center.x, y: backroundView.center.y)
        leftViewMode = .always
        leftView = backroundView
        
    }
    
    
//    func addLeftImage1 (image: UIImage) {
//
//        let viewSize = frame.height
//
//        //backgroundColorView
//        let subView = UIView()
//        let subViewSize = viewSize - 5
//        subView.frame.size = CGSize(width: subViewSize, height: subViewSize)
//        subView.layer.cornerRadius = subView.frame.width / 15
//     //   subView.backgroundColor = Colors.bgColor
//
//        //ImageView
//        let leftImageView = UIImageView(image: image)
//        leftImageView.image = image
//        leftImageView.contentMode = .scaleAspectFit
//        leftImageView.frame.size = CGSize(width: subViewSize / 1.9, height: subViewSize / 1.9)
//        leftImageView.center = subView.center
//
//        //View
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: viewSize + 10, height: viewSize))
//        view.backgroundColor = UIColor.clear
//
//        subView.center = view.center
//        subView.addSubview(leftImageView)
//        view.addSubview(subView)
//        leftView = view
//        leftViewMode = .always
//    }

}
