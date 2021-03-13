//
//  User.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class User: NSObject {
    
    var username: String?
    var password: String?
    
    override init(){
        self.username = ""
        self.password = ""
    }
    
    init(username: String?, password: String?){
        self.username = username
        self.password = password
    }
    
    func validateUsername() -> Validation{
        let validation = Validation.init(status: true, msg: "Success")
        
        if(!Util.validateEmail(email: self.username ?? "")){
            validation.status = false
            validation.msg = "Invalid Email for Username"
            return validation
        }
        
        if (self.password?.count == 0){
            validation.status = false
            validation.msg = "Empty Password"
            return validation
        }
        
        return validation
    }
}
