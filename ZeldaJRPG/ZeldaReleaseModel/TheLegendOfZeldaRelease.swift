//
//  TheLegendOfZeldaRelease.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

class TheLegendOfZeldaRelease: ZeldaRelease {
    var name: ZeldaReleaseName
    var year: UInt
    
    var overworldAreas: [ZeldaLocation] = [
    ZeldaLocation(name: "Death Mountain",
                  allies: [:],
                  enemies: [:],
                  objects: [:])
    ]
    var dungeonAreas: [ZeldaLocation] = [
    
    ]
    
    required init(name: ZeldaReleaseName, year: UInt, overworldAreas: [ZeldaLocation], dungeonAreas: [ZeldaLocation]) {
        self.name = name
        self.year = year
        self.overworldAreas = overworldAreas
        self.dungeonAreas = dungeonAreas
    }
    
    let overworldLocations = [tlozOverworldLocationNames.allCases]
    let firstQuestLocations = [tlozFirstQuestLocations.allCases]
    let secondQuestLocations = [tlozSecondQuestLocations.allCases]
    
    enum tlozOverworldLocationNames: String, CaseIterable {
        case deathMountain = "Death Mountain"
        case fairyFountain = "Fairy Fountain"
        case graveyard = "Graveyard"
        case hyrule = "Hyrule"
        case itemShop = "Item Shop"
        case lostHills = "Lost Hills"
        case lostWoods = "Lost Woods"
        case moneyMakingGame = "Money Making Game"
        case potionShop = "Potion Shop"
        case spectacleRock = "Spectacle Rock"
        case oldMan = "Old Man"
        case startingRoom = "Good Luck Hero"
    }
    
    enum tlozFirstQuestLocations: String, CaseIterable {
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
    
    enum tlozSecondQuestLocations: String, CaseIterable {
        case level1 = "The Eagle - 2"
        case level2 = "The Moon - 2"
        case level3 = "The Manji - 2"
        case level4 = "The Snake - 2"
        case level5 = "The Lizard - 2"
        case level6 = "The Dragon - 2"
        case level7 = "The Lion - 2"
        case level8 = "Death Mountain - 2"
    }
}
