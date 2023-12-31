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
    let release: ZeldaReleaseName
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
    var experienceBonus: Double = 0.0
    
    var physicalDamageModifier: Double = 0.0
    var fireDamageModifier: Double = 0.0
    var iceDamageModifier: Double = 0.0
    var shockDamageModifier: Double = 0.0
    var maliceDamageModifier: Double = 0.0
    var sandDamageModifier: Double = 0.0
    var shadowDamageModifier: Double = 0.0
    var waterDamageModifier: Double = 0.0
    
    var physicalProtectionModifier: Double = 0.0
    var fireProtectionModifier: Double = 0.0
    var iceProtectionModifier: Double = 0.0
    var shockProtectionModifier: Double = 0.0
    var maliceProtectionModifier: Double = 0.0
    var sandProtectionModifier: Double = 0.0
    var shadowProtectionModifier: Double = 0.0
    var waterProtectionModifier: Double = 0.0
    
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
