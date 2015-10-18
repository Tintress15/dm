//
//  Contact.swift
//  dm
//
//  Created by mpc on 10/17/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class Contact : Person {
    //MARK: - Properties
    private var _isEmergencyContact : Bool
    private var _isPhysician        : Bool
    private var _isPharmacy         : Bool
    
    override init() {
        self._isEmergencyContact = false
        self._isPhysician        = false
        self._isPharmacy         = false
        super.init()
    }
    
    convenience init(isEmergencyContact: Bool, isPhysician: Bool, isPharmacy: Bool) {
        self.init()
        self._isEmergencyContact = isEmergencyContact
        self._isPhysician        = isPhysician
        self._isPharmacy         = isPharmacy
    }
}