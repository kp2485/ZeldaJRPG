//
//  ZeldaEntity.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/17/23.
//

import Foundation

protocol ZeldaEntity: Identifiable {
    var id: UUID { get }
    var name: String { get }
    var release: Game { get }
    var imageName: String { get }
    var affinity: [EffectType] { get }
}
