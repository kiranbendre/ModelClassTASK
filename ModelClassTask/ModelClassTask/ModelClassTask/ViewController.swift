//
//  ViewController.swift
//  ModelClassTask
//
//  Created by Iphone XR on 04/01/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let nameTextField =  UITextField()
    let surnameTextfd = UITextField()
    let phoneNoTextfd = UITextField()
    let cityTextfd = UITextField()
    let pushButton = UIButton()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        NameTF()
        SurnameTF()
        PhoneNoTF()
        CityTF()
        ButtonUI()
    }
    func NameTF(){
        nameTextField.placeholder = " Enter your name"
        nameTextField.font = UIFont.systemFont(ofSize: 15)
        nameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        nameTextField.returnKeyType = UIReturnKeyType.done
        nameTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        nameTextField.delegate = self
        self.view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 100).isActive = true
        NSLayoutConstraint(item: nameTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: nameTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
    }
    func SurnameTF(){
        surnameTextfd.placeholder = " Enter your surname"
        surnameTextfd.font = UIFont.systemFont(ofSize: 15)
        surnameTextfd.borderStyle = UITextField.BorderStyle.roundedRect
        surnameTextfd.returnKeyType = UIReturnKeyType.done
        surnameTextfd.clearButtonMode = UITextField.ViewMode.whileEditing
        surnameTextfd.delegate = self
        self.view.addSubview(surnameTextfd)
        surnameTextfd.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: surnameTextfd, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: surnameTextfd, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: surnameTextfd, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
    }
    func PhoneNoTF(){
        phoneNoTextfd.placeholder = " Enter your phonenumber"
        phoneNoTextfd.font = UIFont.systemFont(ofSize: 15)
        phoneNoTextfd.borderStyle = UITextField.BorderStyle.roundedRect
        phoneNoTextfd.returnKeyType = UIReturnKeyType.done
        phoneNoTextfd.clearButtonMode = UITextField.ViewMode.whileEditing
        phoneNoTextfd.delegate = self
        self.view.addSubview(phoneNoTextfd)
        phoneNoTextfd.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: phoneNoTextfd, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: phoneNoTextfd, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: phoneNoTextfd, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    func CityTF(){
        cityTextfd.placeholder = " Enter your city"
        cityTextfd.font = UIFont.systemFont(ofSize: 15)
        cityTextfd.borderStyle = UITextField.BorderStyle.roundedRect
        cityTextfd.returnKeyType = UIReturnKeyType.done
        cityTextfd.clearButtonMode = UITextField.ViewMode.whileEditing
        cityTextfd.delegate = self
        self.view.addSubview(cityTextfd)
        cityTextfd.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: cityTextfd, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: cityTextfd, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: cityTextfd, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    func ButtonUI(){
        pushButton.setTitle("SaveData", for: .normal)
        pushButton.setTitleColor(UIColor.blue, for: [])
        pushButton.addTarget(self,action: #selector(savebuttonAction),for: .touchUpInside)
        pushButton.backgroundColor = UIColor.red
        pushButton.center = view.center
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: pushButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 400).isActive = true
        NSLayoutConstraint(item: pushButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: pushButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    @objc func savebuttonAction(_ sender:UIButton){
       //MARK:- Step3- convert dic in tf text
       let dict: [String:Any] = ["studentName":nameTextField.text!,"studentSurname":surnameTextfd.text!,"studentPhoneNumber":phoneNoTextfd.text!,"studentCity":cityTextfd.text!]
        //MARK:- Step4- Create a new obj
        let newObj = StudentModelClass(dic: dict)
        print(newObj.name,newObj.surname,newObj.phoneNumber,newObj.city)
        
        let secVC = SecondViewController()
        //MARK:- Step5- append dic here
        secVC.studentDetails.append(StudentModelClass(dic: dict))
        self.navigationController?.pushViewController(secVC, animated: true)
    }
}

