//
//  ZeldaCharacter.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import Foundation

struct ZeldaCharacter {
    let name: String
    let imageName: String
    let race: Race
    let demonym: Demonym
    let role: Role
    let gender: Gender
    var familyMembers: [ZeldaCharacter]
    var game: Game
    let weaknesses: [DamageType]
    
    var currentHealth: UInt32
    var maxHealth: UInt32
    var currentMagic: UInt32
    var maxMagic: UInt32
    var currentEndurance: UInt32
    var maxEndurance: UInt32
    
    var experience: UInt = 0
    
    var skills: [Skill]
}
