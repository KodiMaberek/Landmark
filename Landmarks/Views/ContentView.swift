//
//  ContentView.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/9/23.
//

import SwiftUI

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
    }


    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem { Label("Futured", systemImage: "star") }


            LandmarkList()
                .tabItem { Label("List", systemImage: "list.bullet") }
        }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
