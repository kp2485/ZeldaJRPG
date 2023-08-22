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
                  objects: [:]),
    ZeldaLocation(name: "Fairy Fountain",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Graveyard",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Hyrule",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Item Shop",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Lost Hills",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Lost Woods",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Money Making Game",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Potion Shop",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Spectacle Rock",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Old Man",
                  allies: [:],
                  enemies: [:],
                  objects: [:]),
    ZeldaLocation(name: "Starting Room",
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
}
