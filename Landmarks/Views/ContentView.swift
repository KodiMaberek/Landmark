//
//  ContentView.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .frame(height: 300)
                
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -150)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.primary)
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About park")
                    .font(.title2)
                Text("Descriptions goes here")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
