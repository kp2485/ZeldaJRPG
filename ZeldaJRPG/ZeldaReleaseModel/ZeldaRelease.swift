//
//  ZeldaRelease.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

protocol ZeldaRelease {
    var name: ZeldaReleaseName { get }
    var year: UInt  { get }
    var overworldAreas: [ZeldaLocation] { get }
    var dungeonAreas: [ZeldaLocation] { get }
    
    init(name: ZeldaReleaseName, year: UInt, overworldAreas: [ZeldaLocation], dungeonAreas: [ZeldaLocation])
}
