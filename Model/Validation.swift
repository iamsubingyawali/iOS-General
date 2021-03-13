//
//  Validation.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class Validation: NSObject {

    var status: Bool
    var msg: String
    
    override init() {
        self.status = false
        self.msg = ""
    }
    
    init(status: Bool, msg: String){
        self.status = status
        self.msg = msg
    }
}
