//
//  ZeldaJRPGApp.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/9/23.
//

import SwiftUI

@main
struct ZeldaJRPGApp: App {
    var body: some Scene {
        WindowGroup {
            CharacterSelectionView()
                .environmentObject(CharacterStore())
        }
    }
}
