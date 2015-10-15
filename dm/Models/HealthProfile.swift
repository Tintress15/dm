//
//  HealthProfile.swift
//  dm
//
//  Created by mpc on 9/12/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import Foundation

class HealthProfile {
    var height : Float
    var weight : Float
    var meds   : [Medication]   //TODO: Create meds class
    
    
    init() {
        height = 0.0
        weight = 0.0
        meds = [Medication]()
    }
    
    
}