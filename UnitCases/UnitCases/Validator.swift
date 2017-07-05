//
//  Validator.swift
//  UnitCases
//
//  Created by Harish Kumar on 3/6/17.
//  Copyright © 2017 Harish Kumar. All rights reserved.
//

import Foundation

public struct Validator{

    public static func isEmailValid(isEmail: String) ->  Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: isEmail)
    }
} 

struct Person {
    let name: String
    let bagColor: String?
    
    init(name: String , bagColor: String? = nil) {
        self.name = name
        self.bagColor = bagColor
    }
}
