//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/15/23.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .center) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
                .foregroundStyle(.black)
        }
    }
    
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
