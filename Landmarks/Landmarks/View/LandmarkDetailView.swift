//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    let landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            bottomView
            Spacer()
        }
    }
    
    private var bottomView: some View {
        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)
            HStack {
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    LandmarkDetailView(landmark: landmarks[3])
}
