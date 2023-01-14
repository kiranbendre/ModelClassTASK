//
//  StudentModel.swift
//  ModelClassTask
//
//  Created by Iphone XR on 04/01/23.
//

import Foundation
//MARK:- Step1- create a custom initializer that takes the dictionary.
public struct StudentModelClass{
   
    var name : String
    var surname : String
    var phoneNumber : String
    var city : String
    
    init(dic:[String:Any]){
        
        name = dic["studentName"] as? String ?? ""
        surname = dic["studentSurname"] as? String ?? ""
        phoneNumber = dic["studentPhoneNumber"] as? String ?? ""
        city = dic["studentCity"] as? String ?? ""
    }

}













//struct StudentModel{
//    let name: String
//    let surname: String
//    let phoneNumber: String
//    let city: String
//
//    init(name: String, surname: String, phoneNumber: String, city: String) {
//        self.name = name
//        self.surname = surname
//        self.phoneNumber = phoneNumber
//        self.city = city
//    }
//}

