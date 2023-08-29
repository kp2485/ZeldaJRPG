//
//  CharacterStore.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/14/23.
//

import Foundation

class CharacterStore: ObservableObject {
    @Published var characters: [ZeldaCharacter] = [
        
        ZeldaCharacter(
            name: "Link",
            release: .TheLegendOfZelda,
            imageName: "TLoZ-link",
            race: .hylian,
            demonym: .hyruleans,
            role: .MainCharacter,
            familyMembers: ["Uncle", "Father", "Mother", "Grandma", "Aryll"],
            affinity: [.physical],
            isUnlocked: true,
            
            // 1 health = 1/4 heart
            currentHealth: 12,
            maxHealth: 12,
            currentMagic: 0,
            maxMagic: 0,
            currentEndurance: 100,
            maxEndurance: 100,
            experienceReward: 1000,
            skills: [
                Skill(
                    name: "Thrust",
                    description: "A quick sword attack targeting one enemy.",
                    unlockLevel: 1,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 5,
                    rupeeCost: 0,
                    targetType: .enemyTarget,
                    successChance: 0.95,
                    effects: [Effect(effectType: .physical, target: "currentHealth", modifiedBy: -2, duration: 1)],
                    cooldown: 0
                ),
                Skill(
                    name: "Boomerang Toss",
                    description: "Hit multiple enemies with one toss!",
                    unlockLevel: 4,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 5,
                    rupeeCost: 0,
                    targetType: .allEnemies,
                    successChance: 0.75,
                    effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -1, duration: 1),
                        Effect(effectType: .physical, target: "currentEndurance", modifiedBy: -25, duration: 1),
                        Effect(effectType: .physical, target: "stunDuration", modifiedBy: 1, duration: 1)
                    ],
                    cooldown: 1
                ),
                Skill(
                    name: "Power Shot",
                    description: "A powerful shot made with Link's bow.",
                    unlockLevel: 8,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 10,
                    rupeeCost: 1,
                    targetType: .enemyTarget,
                    successChance: 0.85,
                    effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -4, duration: 1),
                        Effect(effectType: .physical, target: "currentEndurance", modifiedBy: -10, duration: 1)
                    ],
                    cooldown: 3
                ),
                Skill(
                    name: "Shield Block",
                    description: "Increase your deflection bonus for 2 turns.",
                    unlockLevel: 0,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 25,
                    rupeeCost: 0,
                    targetType: .selfTarget,
                    successChance: 1.0,
                    effects: [Effect(effectType: .physical, target: "deflectionRating", modifiedBy: 0.6, duration: 2)],
                    cooldown: 1
                )
            ]
        ),
        
        ZeldaCharacter(
            name: "Old Man",
            release: .TheLegendOfZelda,
            imageName: "TLoZ-oldMan",
            race: .hylian,
            demonym: .hyruleans,
            role: .MainCharacter,
            familyMembers: ["Old Woman"],
            affinity: [.physical],
            isUnlocked: true,
            
            // 1 health = 1/4 heart
            currentHealth: 8,
            maxHealth: 8,
            currentMagic: 8,
            maxMagic: 8,
            currentEndurance: 50,
            maxEndurance: 50,
            experienceReward: 1000,
            skills: [
                Skill(
                    name: "Bash",
                    description: "A quick staff attack targeting one enemy.",
                    unlockLevel: 1,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 15,
                    rupeeCost: 0,
                    targetType: .enemyTarget,
                    successChance: 0.95,
                    effects: [Effect(effectType: .physical, target: "currentHealth", modifiedBy: -2, duration: 1)],
                    cooldown: 0
                ),
                Skill(
                    name: "Advise",
                    description: "Boost your team's attack.",
                    unlockLevel: 4,
                    healthCost: 0,
                    magicCost: 0,
                    enduranceCost: 5,
                    rupeeCost: 0,
                    targetType: .allAllies,
                    successChance: 0.8,
                    effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -1, duration: 1),
                        Effect(effectType: .physical, target: "currentEndurance", modifiedBy: -25, duration: 1),
                        Effect(effectType: .physical, target: "stunDuration", modifiedBy: 1, duration: 1)
                    ],
                    cooldown: 1
                ),
                Skill(
                    name: "Incinerate",
                    description: "Light a fire underneath one enemy.",
                    unlockLevel: 8,
                    healthCost: 0,
                    magicCost: 4,
                    enduranceCost: 10,
                    rupeeCost: 1,
                    targetType: .enemyTarget,
                    successChance: 0.95,
                    effects: [
                        Effect(effectType: .physical, target: "currentHealth", modifiedBy: -2, duration: 3),
                        Effect(effectType: .physical, target: "currentEndurance", modifiedBy: -5, duration: 3)
                    ],
                    cooldown: 3
                ),
                Skill(
                    name: "Inspire",
                    description: "Boost a single ally's magic.",
                    unlockLevel: 0,
                    healthCost: 0,
                    magicCost: 4,
                    enduranceCost: 10,
                    rupeeCost: 0,
                    targetType: .allyTarget,
                    successChance: 1.0,
                    effects: [Effect(effectType: .physical, target: "currentMagic", modifiedBy: 4, duration: 1)],
                    cooldown: 1
                )
            ]
        )
        
        // Add next character here
    ]
    
    @Published var currentParty: [ZeldaCharacter] = []
}
