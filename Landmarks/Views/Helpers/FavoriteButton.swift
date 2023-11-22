//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Jonathan Tipton on 11/22/23.
//

import SwiftUI

struct FavoriteButton: View {
    // Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            // Label used to improve accessibility with VoiceOver
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly) // Hides label text
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
