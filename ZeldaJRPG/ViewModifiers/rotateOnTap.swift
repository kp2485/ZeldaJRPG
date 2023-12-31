//
//  RotateOnTap.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/22/23.
//

import Foundation
import SwiftUI

struct RotateOnTap: ViewModifier {
    @State var isRotating: Double
    @State var degrees: Double
    
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(Angle(degrees: isRotating),
                              axis: (x: 0, y: 180, z: 0)
            )
            .onTapGesture {
                withAnimation(.easeInOut(duration: 5)
                    .speed(3)) {
                        isRotating = degrees
                    }
            }
    }
}
