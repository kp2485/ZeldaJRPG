//
//  EnemyStore.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/15/23.
//

import Foundation

class EnemyStore: ObservableObject {
    @Published var ZeldaEnemies: [ZeldaEnemy] = [
    ZeldaEnemy(
        name: "Red Octorock",
        release: .TheLegendOfZelda,
        imageName: "TLOZ-Octorock",
        enemyType: .RangedEnemies,
        species: .Octoroks,
        affinity: .water,
        weaponType: .Rock,
        currentHealth: 4,
        maxHealth: 4,
        currentMagic: 0,
        maxMagic: 0,
        currentEndurance: 25,
        maxEndurance: 25,
        experienceReward: 200,
        skills: [
        Skill(name: "Rock Shot",
              description: "Dodge or be knocked back",
              unlockLevel: 0,
              healthCost: 0,
              magicCost: 0,
              enduranceCost: 5,
              rupeeCost: 0,
              targetType: .enemyTarget,
              probability: 0.75,
              effects: [
              Effect(target: "currentHealth", modifiedBy: -1, duration: 1)
              ],
              cooldown: 0)
        ])
    ]
}
