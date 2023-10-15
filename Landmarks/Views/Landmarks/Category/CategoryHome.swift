//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/15/23.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self)var modelData
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.category.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.category[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Futured")
        } detail: {
            Text("Select a Landmark")
        }
    }
    
}

#Preview {
    CategoryHome()
        .environment(ModelData())
       
}
