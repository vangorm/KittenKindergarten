//
//  styleFile.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/15/22.
//
import Foundation
import SwiftUI

//Styled button
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.mint)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

extension Text {
    func mintTitle() -> some View {
        self.font(.system(size: 30, weight: .bold))
            .foregroundColor(.mint)
    }
}
