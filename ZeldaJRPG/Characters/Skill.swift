//
//  Skill.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import Foundation

struct Skill {
    let name: String
    let description: String
    let unlockLevel: UInt8
    let healthCost: UInt
    let magicCost: UInt
    let enduranceCost: UInt
    let targetType: TargetType
    let probability: Double
    let effects: [Effect]
    let cooldown: UInt8
}
