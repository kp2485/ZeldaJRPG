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
    var release: Game
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
    
    var level: UInt = 1
    
    var experienceReward: UInt
    
    var skills: [Skill]
}
