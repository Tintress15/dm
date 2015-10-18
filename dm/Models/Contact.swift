//
//  Contact.swift
//  dm
//
//  Created by mpc on 10/17/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation


//TODO: Consider subclassing CNMutableContact
class Contact : Person {
    //MARK: - Properties
    private var _phone              : NSDictionary //Hold different phone types
    private var _isEmergencyContact : Bool
    private var _isPhysician        : Bool
    private var _isPharmacy         : Bool
    
    
    //MARK: - Intializers
    override init() {
        self._isEmergencyContact = false
        self._isPhysician        = false
        self._isPharmacy         = false
        self._phone              = NSDictionary()
        super.init()
    }
    
    convenience init(isEmergencyContact: Bool, isPhysician: Bool, isPharmacy: Bool) {
        self.init()
        self._isEmergencyContact = isEmergencyContact
        self._isPhysician        = isPhysician
        self._isPharmacy         = isPharmacy
    }
}