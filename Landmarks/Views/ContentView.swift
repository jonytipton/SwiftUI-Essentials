//
//  ContentView.swift
//  Landmarks
//
//  Created by Jonathan Tipton on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        // Make the object available to any subview
        .environment(ModelData())
}
