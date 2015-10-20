//
//  Utils.swift
//  dm
//
//  Created by mpc on 10/20/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit
import Foundation

func trim(str: String) -> String {
    return str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
}

func dmAlert(title : String, message : String, buttonTitle : String) {
    let alert = UIAlertView()
    
    //TODO: Either fancy this up a bit or user HUD or similar
    
    alert.title = title
    alert.message = message
    alert.addButtonWithTitle(buttonTitle)
    alert.show()
}