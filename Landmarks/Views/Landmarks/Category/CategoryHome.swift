//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/15/23.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.category.keys.sorted(), id: \.self) { key in
                    Text(key)}
            }
                .navigationTitle("Futured")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
