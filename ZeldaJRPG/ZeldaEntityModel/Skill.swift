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
    let rupeeCost: UInt
    let targetType: TargetType
    let successChance: Double
    let effects: [Effect]
    let cooldown: UInt8
}
