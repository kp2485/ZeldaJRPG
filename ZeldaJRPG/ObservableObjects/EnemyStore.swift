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
            affinity: [.water,],
            weaponType: .Rock,
            isUnlocked: false,
            currentHealth: 4,
            maxHealth: 4,
            currentMagic: 0,
            maxMagic: 0,
            currentEndurance: 25,
            maxEndurance: 25,
            experienceReward: 200,
            skills: [
                Skill(name: "Rock Shot",
                      description: "Is that a rock?!?",
                      unlockLevel: 0,
                      healthCost: 0,
                      magicCost: 0,
                      enduranceCost: 5,
                      rupeeCost: 0,
                      targetType: .enemyTarget,
                      successChance: 0.75,
                      effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -2, duration: 1)
                      ],
                      cooldown: 0),
                Skill(name: "Tentacle Lash",
                      description: "A large tentacle lashes out...",
                      unlockLevel: 0,
                      healthCost: 0,
                      magicCost: 0,
                      enduranceCost: 8,
                      rupeeCost: 0,
                      targetType: .enemyTarget,
                      successChance: 1.0,
                      effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -2, duration: 1)
                      ],
                      cooldown: 0),
                Skill(name: "Submerge",
                      description: "Octorock dives underwater...",
                      unlockLevel: 0,
                      healthCost: 0,
                      magicCost: 0,
                      enduranceCost: 10,
                      rupeeCost: 0,
                      targetType: .selfTarget,
                      successChance: 1.0,
                      effects: [
                        Effect(effectType: .physical, target: "deflectionRating", modifiedBy: 1.0, duration: 1)
                      ],
                      cooldown: 2)
            ]
        )
    ]
}
