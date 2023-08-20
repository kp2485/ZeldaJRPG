//
//  ZeldaEntity.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/17/23.
//

import Foundation

protocol ZeldaEntity: Identifiable, Equatable {
    var id: UUID { get }
    var name: String { get }
    var release: Game { get }
    var imageName: String { get }
    var affinity: [EffectType] { get }
    
    var isUnlocked: Bool { get set }
    var currentHealth: UInt { get set }
    var maxHealth: UInt { get set }
    var currentMagic: UInt { get set }
    var maxMagic: UInt { get set }
    var currentEndurance: UInt { get set }
    var maxEndurance: UInt { get set }
    var stunDuration: UInt8 { get set }
    var experienceReward: UInt { get set }
    
    var skills: [Skill] { get }
}
