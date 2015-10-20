//
//  FirebaseDataStore.swift
//  dm
//
//  Created by mpc on 10/14/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation
import Firebase


class FirebaseDataStore {
    //MARK: - Singleton
    class var shared: FirebaseDataStore {
        struct Static {
            static let instance = FirebaseDataStore()
        }
        return Static.instance;
    }
    
    
    //MARK: - Firebase setup
    var fbRef = Firebase(url: "https://dmapp.firebaseio.com/")
    
    //MARK: - CRUD
    //TODO: CRUD is stubbed in.  Correct function signatures
    func create(data: String) {
        
    }
    
    func read() -> String {
        var ret : String = ""
        ret = "nothing"
        
        return ret
        
        
        /*** Sample code
        // Get a reference to our posts
        var ref = Firebase(url:"https://docs-examples.firebaseio.com/web/saving-data/fireblog/posts")
        // Get the data on a post that has changed
        ref.observeEventType(.ChildChanged, withBlock: { snapshot in
        let title = snapshot.value.objectForKey("title") as? String
        println("The updated post title is \(title)")
        })
        ***/
        
        
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
}




