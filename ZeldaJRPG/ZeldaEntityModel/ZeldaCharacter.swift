//
//  ZeldaCharacter.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import Foundation

struct ZeldaCharacter: ZeldaEntity {
    
    let id = UUID()
    let name: String
    let release: Game
    let imageName: String
    let race: Race
    let demonym: Demonym
    let role: Role
    let familyMembers: [String]
    let affinity: [EffectType]
    
    var isUnlocked: Bool
    
    // Character State
    var currentHealth: UInt
    var maxHealth: UInt
    var currentMagic: UInt
    var maxMagic: UInt
    var currentEndurance: UInt
    var maxEndurance: UInt
    var stunDuration: UInt8 = 0
    
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
    var rupees: UInt = 0
    var bombs: UInt = 0
    
    // Character Bonuses (+) & Penalties (-)
    var deflectionRating: Double = 0.0
    
    var experienceReward: UInt
    
    let skills: [Skill]
    
    // Protocol requirements
    static func == (lhs: ZeldaCharacter, rhs: ZeldaCharacter) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        // TODO: add more properties?
    }
}
