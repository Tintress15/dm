//
//  Medication.swift
//  dm
//
//  Created by mpc on 10/15/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class Medication {
    private var _name         : String
    private var _dosage       : Double
    private var _uom          : String  //TODO: Make measurement type
    private var _frequency    : Int
    private var _timesPerDay  : Int     //TODO: Same as frequency?
    private var _instructions : String
    
    
    //TODO: Code better initializers
    init() {
        name         = ""
        dosage       = ""
        frequency    = 0
        timesPerDay  = 0
        instructions = ""
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
        return self._name
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