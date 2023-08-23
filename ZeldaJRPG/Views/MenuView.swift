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
            Image("goldBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("Zelda_old_logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                
                ZStack{
                    
                    
                    VStack {
                        topTriforceButton
                            .modifier(rotateOnTap(isRotating: isRotating, degrees: 720.0))
                        
                        
                        HStack {
                            leftTriforceButton
                                .modifier(rotateOnTap(isRotating: isRotating, degrees: 720.0))
                            rightTriforceButton
                                .modifier(rotateOnTap(isRotating: isRotating, degrees: 720.0))
                        }
                    }
                }
                
                //                Button {
                //                    // TODO: Start Group Selection Menu
                //                } label: {
                //                    topTriforceButton
                //                }
                //                .padding(.vertical, 15)
                //                .padding(.horizontal, 30)
                //                .background(
                //                    RoundedRectangle(cornerRadius: 30)
                //                        .fill(matchManager.authenticationState != .authenticated || matchManager.inGame ? .brown : .gray)
                //                        .opacity(0.5)
                //                )
                //
                //                Button {
                //                    // TODO: Start Matchmaking Menu
                //                } label: {
                //                    Text("MATCHMAKING")
                //                        .font(.largeTitle)
                //                        .bold()
                //                }
                //                .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
                //                .padding(.vertical, 15)
                //                .padding(.horizontal, 30)
                //                .background(
                //                    RoundedRectangle(cornerRadius: 30)
                //                        .fill(matchManager.authenticationState != .authenticated || matchManager.inGame ? .brown : .gray)
                //                        .opacity(0.5)
                //                )
                
                Spacer()
            }
        }
        
    }
    
    var topTriforceButton: some View {
        ZStack {
            triforceButtonBackground
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
    }
    
    var leftTriforceButton: some View {
        ZStack {
            triforceButtonBackground
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
    }
    
    var rightTriforceButton: some View {
        ZStack {
            triforceButtonBackground
            Image("ALttP_Stalfos_Knight_Sprite")
                .resizable()
                .scaledToFit()
                .frame(height: 90)
                .offset(y: 11)
        }
    }
    
    var triforceButtonBackground: some View {
        Image(systemName: "triangle.fill", variableValue: 1.0)
            .font(.system(size: 140))
            .foregroundColor(.white)
            .opacity(0.5)
            .shadow(radius: CGFloat(5))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchManager: MatchManager())
    }
}
