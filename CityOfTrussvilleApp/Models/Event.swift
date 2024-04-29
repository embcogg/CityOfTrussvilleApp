//
//  Event.swift
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/28/24.
//

import Foundation

struct Event: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var time: String
    var location: String?
    var isFree: Bool
}

