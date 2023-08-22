//
//  ZeldaEnemy.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import Foundation

struct ZeldaEnemy: ZeldaEntity {
    let id = UUID()
    let name: String
    var release: ZeldaReleaseName
    let imageName: String
    let enemyType: EnemyType
    let species: EnemySpecies
    let affinity: [EffectType]
    let weaponType: WeaponType
    
    var isUnlocked: Bool
    
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
    
    // Enemy Bonuses (+) & Penalties (-)
    var deflectionRating: Double = 0.0
    
    var experienceReward: UInt
    
    let skills: [Skill]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        // TODO: add more properties?
    }
    
    static func == (lhs: ZeldaEnemy, rhs: ZeldaEnemy) -> Bool {
        return lhs.id == rhs.id
    }
}
