//
//  Person.swift
//  Classroom
//
//  Created by Apple on 6/13/20.
//  Copyright © 2020 knb. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var age: Int
    var phoneNumber: String?
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    init(_ name: String, _ age: Int, _ phoneNumber: String) {
        self.name = name
        self.age = age
        self.phoneNumber = phoneNumber
    }
    
    func changeName(_ newName: String) {
        print("Person|Start change person's name")
        let currentName = self.name
        self.name = newName
        print("Change name successfully! \(currentName)'s name was changed to \(newName)! \n")
    }
    
    func getInfo() {
        print("Name: \(name), age: \(age), phoneNumber: \(phoneNumber ?? "no phone number found")")
    }
}
