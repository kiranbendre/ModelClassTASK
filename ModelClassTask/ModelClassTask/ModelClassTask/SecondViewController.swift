//
//  SecondViewController.swift
//  ModelClassTask
//
//  Created by Iphone XR on 04/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    let nameLabel = UILabel()
    let surnameLabel = UILabel()
    let phoneNLabel = UILabel()
    let cityLabel = UILabel()
   //MARK:-Step2- Create property for model class
   var studentDetails = [StudentModelClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        NameUI()
        SurnameUI()
        PhoneNoUI()
        CityUI()
        AccessDic()

  }
    func NameUI(){
        nameLabel.text = "enter your name"
        nameLabel.numberOfLines = 0
        nameLabel.textAlignment = .center
        nameLabel.sizeToFit()
        nameLabel.backgroundColor = UIColor.white
        self.view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 100).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
    }
    func SurnameUI(){
        surnameLabel.text = "enter your surname"
        surnameLabel.numberOfLines = 0
        surnameLabel.textAlignment = .center
        surnameLabel.sizeToFit()
        surnameLabel.backgroundColor = UIColor.white
        self.view.addSubview(surnameLabel)
        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: surnameLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: surnameLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: surnameLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
    }
      func PhoneNoUI(){
        phoneNLabel.text = "enter your phoneno"
        phoneNLabel.numberOfLines = 0
        phoneNLabel.textAlignment = .center
        phoneNLabel.sizeToFit()
        phoneNLabel.backgroundColor = UIColor.white
        self.view.addSubview(phoneNLabel)
        phoneNLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: phoneNLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 300).isActive = true
        NSLayoutConstraint(item: phoneNLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: phoneNLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
    }
      func CityUI(){
        cityLabel.text = "enter your city name"
        cityLabel.numberOfLines = 0
        cityLabel.textAlignment = .center
        cityLabel.sizeToFit()
        cityLabel.backgroundColor = UIColor.white
        self.view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: cityLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 400).isActive = true
        NSLayoutConstraint(item: cityLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: cityLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
    }
      func AccessDic(){
        //MARK:- Step6- Access dic here
        nameLabel.text = studentDetails[0].name
        surnameLabel.text = studentDetails[0].surname
        phoneNLabel.text = studentDetails[0].phoneNumber
        cityLabel.text = studentDetails[0].city
    }
   
}
