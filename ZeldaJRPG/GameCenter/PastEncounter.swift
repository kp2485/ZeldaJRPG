//
//  PastEncounter.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

struct PastEncounter: Identifiable {
    let id = UUID()
    var opponents: [any ZeldaEntity]?
    var result: EncounterResult
    var gains: [ZeldaObject]?
}
