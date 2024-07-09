//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Cristian  Veras on 7/7/24.
//

import SwiftUI



struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
