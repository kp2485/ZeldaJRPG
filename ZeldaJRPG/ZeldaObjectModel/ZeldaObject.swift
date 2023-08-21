//
//  ZeldaObject.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

protocol ZeldaObject: Identifiable, Equatable, Hashable {
    var id: UUID { get }
    var name: String { get }
    var description: String { get }
    
    var healthEffect: Int { get }
    var magicEffect: Int { get }
    var enduranceEffect: Int { get }
    var deflectionEffect: Int { get }
    var stunDurationEffect: Int { get }
    var skillEffects: [Skill] { get }
    
    func hash(into hasher: inout Hasher)
}
