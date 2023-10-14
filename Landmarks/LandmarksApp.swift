//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/9/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
