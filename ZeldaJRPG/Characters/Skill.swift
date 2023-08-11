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
    let healthCost: UInt
    let magicCost: UInt
    let enduranceCost: UInt
    let targetType: TargetType
    let effects: [Effect]
}
