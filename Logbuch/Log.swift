//
//  Log.swift
//  Logbuch
//
//  Created by Philipp Kotte on 02.05.23.
//

import Foundation
/*
 – Datum
 – Kennzeichen
 – Flugzeugtyp
 – Abflugsort
 – Ankunftsort
 – Ankunftsszeit
 – Flugzeit SEP
 – Flugzeit UL
 – Landungen
 – Operational Condition Night
 – Flugzeit PIC
 – Flugzeit Dua
 */

class Log{
    var date: Date
    var lizensplate, plane_type: String
    var place_of_depatrure, place_of_arrival: String
    var time_of_arrival: String
    var flight_time_sep, flight_time_ul, flight_time_pic, flight_time_dual: String
    var landings: Int
    var operational_condition_night: String
    init(date: Date, lizensplate: String, plane_type: String, place_of_depatrure: String, place_of_arrival: String, time_of_arrival: String, flight_time_sep: String, flight_time_ul: String, flight_time_pic: String, flight_time_dual: String, landings: Int, operational_condition_night: String) {
        self.date = date
        self.lizensplate = lizensplate
        self.plane_type = plane_type
        self.place_of_depatrure = place_of_depatrure
        self.place_of_arrival = place_of_arrival
        self.time_of_arrival = time_of_arrival
        self.flight_time_sep = flight_time_sep
        self.flight_time_ul = flight_time_ul
        self.flight_time_pic = flight_time_pic
        self.flight_time_dual = flight_time_dual
        self.landings = landings
        self.operational_condition_night = operational_condition_night
    }
}
