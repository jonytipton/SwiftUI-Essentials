//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jonathan Tipton on 11/22/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
