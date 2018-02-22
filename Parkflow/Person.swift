//
//  Person.swift
//  Parkflow
//
//  Created by Karl Michel Koerich on 2018-02-06.
//  Copyright © 2018 Hamko. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    let email: String
    let password: String
    
    init(name: String, email: String, password: String){
        
        self.name = name
        self.email = email
        self.password = password
        
    }
}
