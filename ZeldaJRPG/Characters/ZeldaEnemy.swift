//
//  ZeldaEnemy.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import Foundation

struct ZeldaEnemy {
    let name: String
    let imageName: String
    let enemyType: EnemyType
    let species: EnemySpecies
    var game: Game
    let affinity: EffectType
    let weaponType: WeaponType
    
    var currentHealth: UInt
    var maxHealth: UInt
    var currentMagic: UInt
    var maxMagic: UInt
    var currentEndurance: UInt
    var maxEndurance: UInt
    
    var experienceReward: UInt
    
    var skills: [Skill]
}
