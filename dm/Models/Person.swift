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
    private var _username    : String   //TODO: Not here
    private var _moniker     : String
    private var _firstName   : String?
    private var _lastName    : String?
    private var _birthDate   : NSDate
    private var _gender      : GenderType
    
    //MARK: - Init
    init() {
        _username   = ""
        _moniker    = ""
        _birthDate  = NSDate()
        _gender     = .Undeclared
    }
        
    //MARK: - Getters
    func getUserName() -> String {
        return self._username
    }
    
    func getMoniker() -> String {
        return self._moniker
    }
    
    func getFirstName() -> String {
        return self._firstName ?? ""
    }
    
    func getLastName() -> String {
        return self._lastName ?? ""
    }
    
    func getBirthDate() -> NSDate {
        return self._birthDate
    }
    
    func getGender() -> String {
        return self._gender.description()
    }
    
    func getGender(type: String) -> String {
        switch type {
        case SHORT:
            return self._gender.shortDescription()
        default:
            return self._gender.description()
        }
    }
    
    
    //MARK: - Setters
    func setUserName(username: String) {
        self._username = username
    }
    
    func setMoniker(moniker: String) {
        self._moniker = moniker
    }
    
    func setFirstName(firstName: String) {
        self._firstName = firstName
    }
    
    func setLastName(lastName: String) {
        self._lastName = lastName
    }
    
    func setBirthDate(birthDate: NSDate) {
        self._birthDate = birthDate
    }
    
    func setGender(gender : GenderType) {
        self._gender = gender
    }
}