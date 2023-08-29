//
//  MatchManager.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation
import GameKit

class MatchManager: ObservableObject {
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationState = PlayerAuthState.authenticating
    
    @Published var isMyTurn = false
    // @Published var currentLocation: ZeldaLocation
    // @Published var currentEncounter: [PastEncounter] = []
    @Published var pastEncounters = [PastEncounter]()
    
    @Published var score = 0
    @Published var remainingTurnTime: Int = Settings().turnTime
    
    var match: GKMatch?
    var otherPlayer: GKPlayer?
    var localPlayer = GKLocalPlayer.local
    
    var playerUUIDkey = UUID().uuidString
    
    var rootViewController: UIViewController? {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return windowScene?.windows.first?.rootViewController
    }
    
    func authenticateUser() {
        GKLocalPlayer.local.authenticateHandler = { [self] vc, e in
            if let viewController = vc {
                rootViewController?.present(viewController, animated: true)
                return
            }
            
            if let error = e {
                authenticationState = .error
                print(error.localizedDescription)
            }
            
            if localPlayer.isAuthenticated {
                if localPlayer.isMultiplayerGamingRestricted {
                    authenticationState = .restricted
                } else {
                    authenticationState = .authenticated
                }
            } else {
                authenticationState = .unauthenticated
            }
        }
    }
}
