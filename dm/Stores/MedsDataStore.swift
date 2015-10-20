//
//  MedsDataStore.swift
//  dm
//
//  Created by mpc on 10/19/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class MedicationsDataStore {
    //MARK: - Singleton
    class var shared: MedicationsDataStore {
        struct Static {
            static let instance = MedicationsDataStore()
        }
        return Static.instance;
    }
    
    //MARK: - CRUD
    //TODO: CRUD is stubbed in.  Correct function signatures
    func create(data: String) {
        
    }
    
    func read() -> String {
        var ret : String = ""
        ret = "nothing"
        
        return ret  // Will return Medication instance
        
        /*
        var myRootRef = Firebase(url:"https://docs-examples.firebaseio.com/web/data")
        myRootRef.childByAppendingPath("users/mchen/name")
        */
        
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
    
    
    
    
    
    
    
}
