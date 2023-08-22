//
//  ZeldaObject.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

class ZeldaObject: Identifiable, Equatable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    
    var healthEffect: Int
    var magicEffect: Int
    var enduranceEffect: Int
    var deflectionEffect: Int
    var stunDurationEffect: Int
    var skillEffects: [Skill]
    
    init(id: UUID = UUID(), name: String, description: String, healthEffect: Int, magicEffect: Int, enduranceEffect: Int, deflectionEffect: Int, stunDurationEffect: Int, skillEffects: [Skill]) {
        self.id = id
        self.name = name
        self.description = description
        self.healthEffect = healthEffect
        self.magicEffect = magicEffect
        self.enduranceEffect = enduranceEffect
        self.deflectionEffect = deflectionEffect
        self.stunDurationEffect = stunDurationEffect
        self.skillEffects = skillEffects
    }
    
    static func == (lhs: ZeldaObject, rhs: ZeldaObject) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        // TODO: add more properties?
    }
}
