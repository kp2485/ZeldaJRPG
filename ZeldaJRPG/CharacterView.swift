//
//  CharacterView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/14/23.
//

import SwiftUI

struct CharacterView: View {
    
    @EnvironmentObject var characterViewModel: CharacterViewModel
    
    var screenwidth = UIScreen.main.bounds.width
    
    //ronaldfoster22@outlook.com
    
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Current Party")
                    .font(.largeTitle)
                    .opacity(0.90)
                
                HStack {
                    ForEach(0..<4) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.horizontal, 5)
                            .frame(width: screenwidth / 5)
                    }
                    
                }
                .frame(height: 100)
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(characterViewModel.characters) { character in
                            CharacterGridView(character: character)
                        }
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    
    static var previews: some View {
        CharacterView()
            .environmentObject(CharacterViewModel())
    }
}
