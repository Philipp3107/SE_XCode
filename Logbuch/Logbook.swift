//
//  Logbook.swift
//  Logbuch
//
//  Created by Philipp Kotte on 02.05.23.
//

import Foundation

/*
 - Vorname
 – Nachname
 – Anschrift
 – Geburtsdatum
 – Geburtsort
 – Nationalit ̈at
 – Logbuchnummer
 – Begonnen
 – Beendet
 – Eintr ̈age
 */

class Logbook{
    var name: Name
    var adress: String
    var place_of_birth, day_of_birth, nationality: String
    var logbook_id: Int
    var started: Date
    var ended: Date?
    var logs: [Log]
    var is_open: Bool
    init(name: Name, adress: String, place_of_birth: String, day_of_birth: String, nationality: String, logbook_id: Int, started: Date, ended: Date?, is_open: Bool, logs: [Log]) {
        self.name = name
        self.adress = adress
        self.place_of_birth = place_of_birth
        self.day_of_birth = day_of_birth
        self.nationality = nationality
        self.logbook_id = logbook_id
        self.started = started
        self.ended = ended
        self.is_open = is_open
        self.logs = logs
    }
}
