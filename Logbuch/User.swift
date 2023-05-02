//
//  User.swift
//  Logbuch
//
//  Created by Philipp Kotte on 02.05.23.
//

import Foundation

/*
 SL1 SE1 SS23 Pilotenlogbuch
 • Benutzer
 \D0030\ hier sind alle Benutzer Daten aufgef ̈uhrt.
     – Vorname [done]
     – Nachname [done]
     – Geburtsort
     – Geburtsdatum
     – Anschrift [done]
     – Nationalit ̈at [done]
 – Lizenzen
 – Berechtigungen
 – Logb ̈ucher
 */

class User{
    var name: Name
    var adress, nationality: String
    var licenses: [Licens]
    var place_of_birth, day_of_birth: String
    var authorizations: [Authorization]
    var logbooks: [Logbook]
    init(name: Name, adress: String, nationality: String, day_of_birth: String,
         place_of_birth: String, licenses: [Licens], authorizations: [Authorization],
         logbooks: [Logbook]) {
        
        self.name = name
        self.adress = adress
        self.nationality = nationality
        self.licenses = licenses
        self.place_of_birth = place_of_birth
        self.day_of_birth = day_of_birth
        self.authorizations = authorizations
        self.logbooks = logbooks
        
    }
    
    public func generate_new_logbook(){
        self.logbooks.append(Logbook(name: self.name, adress: self.adress, place_of_birth: self.place_of_birth, day_of_birth: self.day_of_birth, nationality: self.nationality, logbook_id: logbooks.count + 1, started: Date.now, ended: Date.now, is_open: true, logs: []))
    }
    
    public func new_log(){
        let result = get_open_logbook()
        print(result)
    }
    
    public func get_open_logbook() -> (Logbook?, UserError?){
        var book: Logbook? = nil
        var error: UserError? = nil
        for logbook in logbooks {
            if(logbook.is_open == true){
                book = logbook
            }else{
                error = UserError.none_open_found
            }
        }
        return (book, error)
    }
    
    enum UserError: Error{
        case none_found
        case none_open_found
        case can_not_load
        case unknown
        
        var description: String{
            switch self{
            case .can_not_load:
                return "Can not Load Logbooks"
            case .none_found:
                return "No Logbooks found"
            case .none_open_found:
                return "No opem Logbooks found"
            case .unknown:
                return "unknown error"
            }
        }
    }
}
