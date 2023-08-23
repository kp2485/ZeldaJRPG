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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(matchManager: MatchManager())
    }
}
