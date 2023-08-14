//
//  CharacterView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/14/23.
//

import SwiftUI

struct CharacterView: View {
    
    @EnvironmentObject var characterViewModel: CharacterViewModel
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.85)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Test")
                    Text("2")
                }
                .foregroundColor(.white)
                .opacity(0.9)
                
                Spacer()
            }
            .padding(.leading, 30)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
