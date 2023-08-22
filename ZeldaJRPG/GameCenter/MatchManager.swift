//
//  MatchManager.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

class MatchManager: ObservableObject {
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationState = PlayerAuthState.authenticating
    
    @Published var isMyTurn = false
    @Published var encounters: [PastEncounter] = []
//    @Published var currentPlace = .tlozOverworld
    @Published var pastEncounters = [PastEncounter]()
    
    @Published var score = 0
    @Published var remainingTurnTime: Int = Settings().maxTurnTime
}
