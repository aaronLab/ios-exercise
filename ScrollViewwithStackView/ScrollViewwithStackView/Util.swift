//
//  Util.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import Foundation

class Util {
    func isValidPhoneNumber(candidate: String) -> Bool {
        let regex = "^01([0|1|6|7|8|9]{1})-?([0-9]{3,4})-?([0-9]{4})$"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: candidate)
    }
}
