//
//  PlayerAuthState.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

enum PlayerAuthState: String {
    case authenticating = "Logging into Game Center..."
    case unauthenticated = "Please sign into Game Center to play."
    case authenticated = "Logged in!"
    case error = "There was an error logging into Game Center."
    case restricted = "Bummer, you're not allowed to play multiplayer games. 🥺"
}
