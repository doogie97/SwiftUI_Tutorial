//
//  LandmarkView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct LandmarkView: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkView(landmark: landmarks[0])
        LandmarkView(landmark: landmarks[1])
    }
}
