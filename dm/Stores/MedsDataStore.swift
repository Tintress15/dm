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
}
