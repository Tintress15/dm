//
//  Person.swift
//  dm
//
//  Created by mpc on 9/12/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import Foundation

enum GenderType {
    case Male, Female, Undeclared
    
    func description() -> String {
        switch self {
            case .Male:
                return "Male"
            case .Female:
                return "Female"
            case .Undeclared:
                return "Undeclared"
        }
    }
    
    func shortDescription() -> String {
        switch self {
            case .Male:
                return "M"
            case .Female:
                return "F"
            case .Undeclared:
                return "U"
        }
    }
}

class Person {
    private var username    : String
    private var moniker     : String
    private var firstName   : String?
    private var lastName    : String?
    private var birthDate   : NSDate
    private var gender      : GenderType
    
    //MARK: - Init
    init() {
        username   = ""
        moniker    = ""
        birthDate  = NSDate()
        gender     = .Undeclared
    }
    
    
    //MARK: - Getters
    func getUserName() -> String {
        return self.username
    }
    
    func getMoniker() -> String {
        return self.moniker
    }
    
    func getFirstName() -> String {
        return self.firstName ?? ""
    }
    
    func getLastName() -> String {
        return self.lastName ?? ""
    }
    
    func getBirthDate() -> NSDate {
        return self.birthDate
    }
    
    func getGender() -> String {
        return self.gender.description()
    }
    
    func getGender(type: String) -> String {
        switch type {
        case SHORT:
            return self.gender.shortDescription()
        default:
            return self.gender.description()
        }
    }
    
    
    //MARK: - Setters
    func setUserName(username: String) {
        self.username = username
    }
    
    func setMoniker(moniker: String) {
        self.moniker = moniker
    }
    
    func setFirstName(firstName: String) {
        self.firstName = firstName
    }
    
    func setLastName(lastName: String) {
        self.lastName = lastName
    }
    
    func setBirthDate(birthDate: NSDate) {
        self.birthDate = birthDate
    }
    
    func setGender(gender : GenderType) {
        self.gender = gender
    }
}