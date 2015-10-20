//
//  Medication.swift
//  dm
//
//  Created by mpc on 10/15/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class Medication {
    //MARK: - Properties
    private var _name         : String
    private var _dosage       : Double
    private var _uom          : String  //TODO: Make measurement type or class?
    private var _frequency    : Int
    private var _timesPerDay  : Int     //TODO: Same as frequency?
    //TODO: Have canned instruction strings to pick from in addition to freeform text
    //      (i.e. Take with food, ({1,2,3} times a day), etc)
    private var _instructions : String
    
    
    //TODO: Code better initializers
    //MARK: - Initializers
    init() {
        self._name         = ""
        self._dosage       = 0.0
        self._frequency    = 0
        self._uom          = ""
        self._timesPerDay  = 0
        self._instructions = ""
    }
    
    
    convenience init(name: String) {
        self.init()
        self._name = name
        
    }
    
    //MARK: - Getters
    func name() -> String {
        return self._name
    }
    
    func dosage() -> Double {
        return self._dosage
    }
    
    func uom() -> String {
        return self._uom
    }
    
    func frequency() -> Int {
        return self._frequency
    }
    
    func instructions() -> String {
        return self._name
    }
    
    
    //MARK: - Setters
    func setName(name: String) {
        self._name = name
    }
    
    func setDosage(dosage: Double) {
        self._dosage = dosage
    }
    
    func setUOM(uom: String) {
        self._uom = uom
    }
    
    func setFrequency(frequency: Int) {
        self._frequency = frequency
    }
    
    func setInstructions(instructions: String) {
        self._instructions = instructions
    }
}