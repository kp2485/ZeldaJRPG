//
//  CharacterGridView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/15/23.
//

import SwiftUI

struct CharacterGridView: View {
    var character: ZeldaCharacter
    
    
    
    var body: some View {
        if character.isUnlocked {
            Image(character.imageName + "Bust")
                .resizable()
                .scaledToFit()
                .mask {
                    RoundedRectangle(cornerRadius: 10)
                }
        } else {
            Image(character.imageName + "Bust")
                .resizable()
                .scaledToFit()
                .mask {
                    RoundedRectangle(cornerRadius: 10)
                }
                .grayscale(1.0)
        }
        
    }
}

struct CharacterGridView_Previews: PreviewProvider {
    static let character = CharacterStore().characters[0]
    
    static var previews: some View {
        CharacterGridView(character: character)
    }
}
