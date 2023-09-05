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
        ZStack {
            background
            
            VStack {
                Text("Game Over 😕")
            }
        }
    }
    
    var background: some View {
        Image("goldBackground")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView(matchManager: MatchManager())
    }
}
