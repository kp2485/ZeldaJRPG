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
    @Published var setting = EncounterSetting.self
    @Published var pastEncounters = [PastEncounter]()
}
