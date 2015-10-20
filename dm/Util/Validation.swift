//
//  Validation.swift
//  dm
//
//  Created by mpc on 10/20/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

func validEmail(email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluateWithObject(email)
}

func validUsername(username: String) -> Bool {
    let minNonWhiteSpace = trim(username).characters.count >= minUsernameLength
    let minutf16 = username.utf16.count >= minUsernameLength
    return minNonWhiteSpace && minutf16
}

func validPassword(password: String) -> Bool {
    let minNonWhiteSpace = trim(password).characters.count >= minPasswordLength
    let minutf16 = password.utf16.count >= minPasswordLength
    return minNonWhiteSpace && minutf16
}