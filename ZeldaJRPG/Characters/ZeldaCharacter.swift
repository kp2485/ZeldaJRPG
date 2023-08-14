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
    var familyMembers: [String]
    var game: Game
    let weaknesses: [EffectType]
    
    var isUnlocked: Bool
    
    var currentHealth: UInt
    var maxHealth: UInt
    var currentMagic: UInt
    var maxMagic: UInt
    var currentEndurance: UInt
    var maxEndurance: UInt
    var stunDuration: UInt8 = 0
    var deflectionBonus: Double = 0.0
    
    var experience: Double = 0.0
    var level: UInt8 {
        var currentLevel: UInt8 = 1
        var threshold: Double = 1000.0
        
        while experience >= threshold * 2 {
            currentLevel += 1
            threshold *= 2
        }
        
        return currentLevel
    }
    
    var skills: [Skill]
}
