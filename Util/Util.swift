//
//  Util.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class Util: NSObject {
    
    class func validateEmail(email: String) -> Bool{
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}
