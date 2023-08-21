//
//  EncounterSetting.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

enum EncounterSetting {
    enum tlozOverworld: String, CaseIterable {
        case deathMountain = "Death Mountain"
        case fairyFountain = "Fairy Fountain"
        case graveyard = "Graveyard"
        case hyrule = "Hyrule"
        case itemShop = "Item Shop"
        case lostHills = "Lost Hills"
        case lostWoods = "Lost Woods"
        case moneyMakingGame = "MoneyMakingGame"
        case potionShop = "Potion Shop"
        case spectacleRock = "Spectacle Rock"
        case oldMan = "Old Man"
    }
    
    enum tlozFirstQuest: String, CaseIterable {
        case theEagle = "The Eagle"
        case theMoon = "The Moon"
        case theManji = "The Manji"
        case theSnake = "The Snake"
        case theLizard = "The Lizard"
        case theDragon = "The Dragon"
        case theDemon = "The Demon"
        case theLion = "The Lion"
        case deathMountain = "Death Mountain"
    }
    
    enum tlozSecondQuest: String, CaseIterable {
        case level1 = "Level 1"
        case level2 = "Level 2"
        case level3 = "Level 3"
        case level4 = "Level 4"
        case level5 = "Level 5"
        case level6 = "Level 6"
        case level7 = "Level 7"
        case level8 = "Level 8"
        case level9 = "Level 9"
    }
}

