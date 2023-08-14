//
//  CharacterViewModel.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/14/23.
//

import Foundation

class CharacterViewModel: ObservableObject {
    @Published var characters: [ZeldaCharacter] = [
    ZeldaCharacter(
        name: "Link",
        imageName: "Link",
        race: .hylian,
        demonym: .hyruleans,
        role: .MainCharacter,
        gender: .male,
        familyMembers: ["Uncle", "Father", "Mother", "Grandma", "Aryll"],
        game: .TheLegendOfZelda,
        weaknesses: [],
        isUnlocked: true,
        currentHealth: 1000,
        maxHealth: 1000,
        currentMagic: 250,
        maxMagic: 250,
        currentEndurance: 750,
        maxEndurance: 750,
        skills: [
            Skill(
                name: "Slash",
                description: "A sword attack made with a slashing motion",
                unlockLevel: 1,
                healthCost: 0,
                magicCost: 0,
                enduranceCost: 25,
                targetType: .enemyTarget,
                probability: 0.95,
                effects: [Effect(target: "currentHealth", modifiedBy: -50, duration: 0)],
                cooldown: 0
            ),
            Skill(
                name: "Boomerang Toss",
                description: "",
                unlockLevel: 4,
                healthCost: 0,
                magicCost: 0,
                enduranceCost: 50,
                targetType: .allEnemies,
                probability: 0.75,
                effects: [
                    Effect(target: "currentHealth", modifiedBy: -25, duration: 0),
                    Effect(target: "currentStamina", modifiedBy: -25, duration: 0),
                    Effect(target: "stunDuration", modifiedBy: 1, duration: 0)
                ],
                cooldown: 1
            ),
            Skill(
                name: "Power Shot",
                description: "A powerful shot made with Link's bow",
                unlockLevel: 8,
                healthCost: 0,
                magicCost: 0,
                enduranceCost: 50,
                targetType: .enemyTarget,
                probability: 0.85,
                effects: [
                    Effect(target: "currentHealth", modifiedBy: -100, duration: 0),
                    Effect(target: "currentStamina", modifiedBy: -50, duration: 13)
                ],
                cooldown: 3
            ),
            Skill(
                name: "Shield Block",
                description: "",
                unlockLevel: 0,
                healthCost: 0,
                magicCost: 0,
                enduranceCost: 25,
                targetType: .selfTarget,
                probability: 1.0,
                effects: [Effect(target: "deflectionBonus", modifiedBy: 0.6, duration: 1)],
                cooldown: 0
            )
        ]
    )
    ]
}
