//
//  CloudKitDataStore.swift
//  dm
//
//  Created by mpc on 9/11/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import Foundation
import CloudKit

/*
class CloudKitNoteStore: DataStoreProtocol {
    private var counter : UInt = 0
    
    // database to hold data
    let container : CKContainer
    let privateDB : CKDatabase
    
    private var notes = [Data]()  //TODO: Need data model
    
    
    //MARK: - Singleton
    class var sharedStore: CloudKitNoteStore {
        struct Static {
            static let instance = CloudKitNoteStore()
        }
        
        return Static.instance
    }
    
    class func shared() -> DataStoreProtocol {
        return CloudKitNoteStore.sharedStore
    }
    
    //MARK: - Init methods
    private init() {
        container = CKContainer.defaultContainer()
        privateDB = container.privateCloudDatabase
        
        load()
    }
    
    public override init() {
        super.init()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    class func prepareStore() {
        let useCloudKit = NSUserDefaults.standardUserDefaults().objectForKey(cloudKitPreference) as? Bool ?? false
        
        CKContainer.defaultContainer().accountStatusWithCompletionHandler { (status, error) -> Void in
            if status == CKAccountStatus.Available {
                
                if !useCloudKit {
                    //migrate to us
                    NoteStore.migrateToStore(CloudKitNoteStore.shared())
                }
                
                NSUserDefaults.standardUserDefaults().setObject(true, forKey: cloudKitPreference)
                NSUserDefaults.standardUserDefaults().synchronize()
                
                println("CloudKit is available")
                
            } else {
                NSUserDefaults.standardUserDefaults().setObject(false, forKey: cloudKitPreference)
                NSUserDefaults.standardUserDefaults().synchronize()
                
                if useCloudKit {
                    // migrate from us
                    
                    NoteStore.migrateFromStore(CloudKitNoteStore.shared())
                    
                }
                
                println("CloudKit is not available")
            }
        }
    }

    
    private func setup() {
        let nc = NSNotificationCenter.defaultCenter()
        
        var _keyboardShowObserver = nc.addObserverForName(UIKeyboardDidShowNotification, object: nil, queue: NSOperationQueue.mainQueue()) { [weak self] (notification) -> Void in
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0), dispatch_get_main_queue()) {
                if let hasSelf = self {
                    hasSelf.formAccessoryBarKeyboardWillShow()
                }
                
                return
            }
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    
    func count() -> UInt {
        return self.counter
    }
}
*/
