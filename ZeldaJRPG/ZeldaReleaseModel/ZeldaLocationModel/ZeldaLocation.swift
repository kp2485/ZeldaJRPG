//
//  ZeldaLocation.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

struct ZeldaLocation: Identifiable {
    let id = UUID()
    let name: String
    // [thing:probability of thing appearing]
    let allies: [ZeldaCharacter:Double]
    let enemies: [ZeldaEnemy:Double]
    let objects: [ZeldaObject:Double]
}
