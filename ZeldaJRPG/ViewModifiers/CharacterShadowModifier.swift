//
//  CharacterShadowModifier.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/28/23.
//

import Foundation
import SwiftUI

struct CharacterShadowModifier: ViewModifier {
    let inParty: Bool
    
    func body(content: Content) -> some View {
        content
            .shadow(color: inParty ? .yellow : .clear, radius: 5, x: 0, y: 0)
    }
}
