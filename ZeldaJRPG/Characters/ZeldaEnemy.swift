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
    let affinity: DamageType
    let weaponType: WeaponType
    
    var currentHealth: UInt32
    var maxHealth: UInt32
    var currentMagic: UInt32
    var maxMagic: UInt32
    var currentEndurance: UInt32
    var maxEndurance: UInt32
    
    var experienceReward: UInt32
    
    var skills: [Skill]
}
