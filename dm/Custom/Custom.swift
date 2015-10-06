
//
//  Custom.swift
//  dm
//
//  Created by mpc on 10/4/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit

class dmButton : UIButton {

    
    func circular() {
        self.layer.borderWidth   = 1.0
        self.layer.cornerRadius  = 12.0
        self.layer.masksToBounds = true
    }
}
