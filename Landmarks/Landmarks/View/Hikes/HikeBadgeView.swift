//
//  HikeBadgeView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct HikeBadgeView: View {
    var name: String
    
    var body: some View {
        Badge()
            .frame(width: 300, height: 300)
            .scaleEffect(1.0 / 3.0)
            .frame(width: 100, height: 100)
        Text(name)
            .font(.caption)
            .accessibilityLabel("Badge for \(name)")
    }
}

#Preview {
    HikeBadgeView(name: "Test Name")
}
