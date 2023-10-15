//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/15/23.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotateBadgeSymbol(angle: Angle(degrees: 0))
}
