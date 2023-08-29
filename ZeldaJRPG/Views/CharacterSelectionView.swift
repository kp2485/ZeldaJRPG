//
//  CharacterSelectionView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/14/23.
//

import SwiftUI

struct CharacterSelectionView: View {
    
    @EnvironmentObject var characterStore: CharacterStore
    
    var screenwidth = UIScreen.main.bounds.width
    
    let columns: [GridItem] = Array(repeating: .init(.fixed(50)), count: 4)
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Current Party")
                    .font(.custom("HyliaSerifBeta-Regular", size: 40))
                    .kerning(4)
                    .font(.largeTitle)
                    .opacity(0.90)
                
                HStack {
                    ForEach(characterStore.currentParty) { partyMember in
                        Image(partyMember.imageName + "Bust")
                            .resizable()
                            .frame(width: screenwidth / 5)
                            .frame(height: 90)
                            .scaledToFit()
                            .mask {
                                RoundedRectangle(cornerRadius: 10)
                            }
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.gray))
                    }
                    .padding(.horizontal, 5)
                }
                .frame(height: 80)
                .padding(.bottom, 10)
                
                
                // All characters, unlocked first
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(characterStore.characters) { character in
                            CharacterGridView(character: character)
                                .frame(width: screenwidth / 5)
                                .modifier(CharacterShadowModifier(inParty: characterStore.currentParty.contains(character)))
                                .onTapGesture {
                                    if characterStore.currentParty.count < 5 {
                                        if !characterStore.currentParty.contains(where: { selectedCharacter in
                                            selectedCharacter.name == character.name
                                        }) {
                                            characterStore.currentParty.append(character)
                                            print("\(character.name) added to party.")
                                        } else {
                                            if let index = characterStore.currentParty.firstIndex(where: { selectedCharacter in
                                                selectedCharacter.name == character.name
                                            }) {
                                                characterStore.currentParty.remove(at: index)
                                                print("\(character.name) removed from party.")
                                            }
                                        }
                                    } else {
                                        print("Party is full.")
                                    }
                                }
                        }
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct CharacterSelectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        CharacterSelectionView()
            .environmentObject(CharacterStore())
    }
}
