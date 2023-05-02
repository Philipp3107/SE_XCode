//
//  Licens.swift
//  Logbuch
//
//  Created by Philipp Kotte on 02.05.23.
//

import Foundation

/*
 – Art
 – Nummer
 – Ausstelldatum
 – Beh ̈orde
 */
class Licens{
    static func == (lhs: Licens, rhs: Licens) -> Bool {
        lhs.id == rhs.id
    }
    
    var type: String
    var id: Int
    var date_of_issue: Date
    var authority: String
    
    init(type: String, id: Int, date_of_issue: Date, authority: String) {
        self.type = type
        self.id = id
        self.date_of_issue = date_of_issue
        self.authority = authority
    }
}
