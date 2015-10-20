//
//  Diet.swift
//  dm
//
//  Created by mpc on 10/17/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class Diet {
    private var _type : NSDictionary  //TODO: Maybe String
    
    //MARK: - Initializers
    init() {
        self._type = NSDictionary()
    }
    
    
    //MARK: - Getters
    func dietType() -> NSDictionary {
        return self._type
    }
    
    //MARK: - Setters
    func setType(dietKey: String, dietVal: String) {
        _type.setValue(dietKey, forKey: dietVal)
    }
    
    

    
}
