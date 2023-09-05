//
//  MenuView.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/22/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager: MatchManager
    @State private var isRotating = 0.0
    
    var body: some View {
        ZStack {
            background
            
            VStack {
                Spacer()
                
                zeldaLogo
                
                gameTitle
                
                ZStack{
                    // TODO: Triforce underlay
                    
                    VStack {
                        topTriforceButton
                        
                        HStack {
                            leftTriforceButton
                            
                            rightTriforceButton
                        }
                    }
                }
                
                Text(matchManager.authenticationState.rawValue)
                    .font(.headline.weight(.semibold))
                    .opacity(0.6)
                
                
                Spacer()
                
            }
        }
    }
    
    var background: some View {
        Image("goldBackground")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
    
    var zeldaLogo: some View {
        Image("Zelda_old_logo")
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 30)
    }
    
    var gameTitle: some View {
        // TODO: Animate letter by letter from ancient hylian to english
        Text("Quantum Link")
            .font(.custom("HyliaSerifBeta-Regular", size: 40))
            .baselineOffset(5)
            .opacity(0.6)
            .kerning(5)
    }
    
    var triforceButtonBackground: some View {
        Image(systemName: "triangle.fill", variableValue: 1.0)
            .font(.system(size: 130))
            .opacity(0.5)
            .shadow(radius: CGFloat(5))
    }
    
    var topTriforceButton: some View {
        Button {
            // TODO: Navigate to matchmaking
            print("Battle button tapped")
        } label: {
            ZStack {
                triforceButtonBackground
                    .foregroundColor(matchManager.authenticationState != .authenticated || matchManager.inGame ? .black : .white)
                Image("TAoL_Magical_Sword_Artwork")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: 210))
                    .frame(height: 100)
                    .offset(x: -15, y: 6)
                Image("TAoL_Magical_Sword_Artwork")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: 150))
                    .frame(height: 100)
                    .offset(x: 15, y: 6)
            }
            //            .modifier(RotateOnTap(isRotating: isRotating, degrees: 720.0))
        }
        //        .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
    }
    
    var leftTriforceButton: some View {
        Button {
            // TODO: Navigate to character info view
            print("Character button tapped")
        } label: {
            ZStack {
                triforceButtonBackground
                    .foregroundColor(.white)
                Image("LinkSwordRaised")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .offset(x: -18, y: 7)
                Image("Zeldafs2")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .offset(x: 22, y: 22)
            }
            //            .modifier(RotateOnTap(isRotating: isRotating, degrees: 720.0))
        }
    }
    
    var rightTriforceButton: some View {
        Button {
            // TODO: Navigate to enemy info view
            print("Enemies button tapped")
        } label: {
            ZStack {
                triforceButtonBackground
                    .foregroundColor(.white)
                Image("ALttP_Stalfos_Knight_Sprite")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .offset(y: 11)
            }
        }
        //        .modifier(RotateOnTap(isRotating: isRotating, degrees: 720.0))
    }
    
    
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchManager: MatchManager())
    }
}
