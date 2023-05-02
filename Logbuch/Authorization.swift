//
//  Authorization.swift
//  Logbuch
//
//  Created by Philipp Kotte on 02.05.23.
//

import Foundation

/*
 – Name
 – Pr ̈ufung am
 – G ̈ultig bis
 – Pr ̈ufe
 */
class Authorization{
    var name: String
    var checked_on: Date
    var valid_until: Date
    var tester: Name
    
    init(name: String, checked_on: Date, valid_until: Date, tester: Name) {
        self.name = name
        self.checked_on = checked_on
        self.valid_until = valid_until
        self.tester = tester
    }
}
