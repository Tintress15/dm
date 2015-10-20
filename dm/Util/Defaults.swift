//
//  Defaults.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit
import Foundation

let dmGreen = UIColor(red: 81.0/255.0, green: 188.0/255.0, blue: 133.0/255.0, alpha: 1)
let dmBlue  = UIColor(red: 21.0/255.0, green: 43.0/255.0, blue: 72.0/255.0, alpha: 1)


let SHORT   = "Short"
let LONG    = "Long"

let minUsernameLength = 3
let minPasswordLength = 5

class DMButton : UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius    = self.frame.size.height / 2
        self.layer.masksToBounds   = false
        self.layer.borderWidth     = 0.5
        self.layer.borderColor     = UIColor.blackColor().CGColor
        self.titleLabel?.textColor = UIColor.blackColor()
        self.tintColor             = UIColor.whiteColor()
        self.backgroundColor       = dmBlue
    }
}

class DMTextField : UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius    = 12.0;
        self.layer.borderWidth     = 0.5
        self.layer.borderColor     = dmBlue.CGColor
        self.textColor             = UIColor.whiteColor()
        self.backgroundColor       = dmBlue
        self.tintColor             = UIColor.whiteColor()
    }
}
