//
//  GameOverView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/22/23.
//

import SwiftUI

struct GameOverView: View {
    @ObservedObject var matchManager: MatchManager
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView(matchManager: MatchManager())
    }
}
