//
//  GameView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/22/23.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    
    var body: some View {
        Text("Quantum Link")
            .font(.custom("HyliaSerifBeta-Regular", size: 40))
            .baselineOffset(0)
            .opacity(0.65)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(matchManager: MatchManager())
    }
}
