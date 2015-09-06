//
//  Defaults.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit
import Foundation

class DMButton : UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 5.0;
        self.layer.borderWidth  = 0.5
        self.layer.borderColor  = UIColor.blackColor().CGColor
        
        self.titleLabel?.textColor = UIColor.redColor()
        self.backgroundColor       = UIColor.whiteColor()
        self.tintColor             = UIColor.whiteColor()
        
    }
}