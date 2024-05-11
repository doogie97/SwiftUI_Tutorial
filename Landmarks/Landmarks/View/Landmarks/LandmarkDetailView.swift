//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    @Environment(ModelData.self) var modelData
    let landmark: Landmark
    var landmarkIndex: Int? {
        modelData.landmarks.firstIndex { $0.id == landmark.id }
    }
    
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
        @Bindable var modelData = modelData
        return VStack(alignment: .leading) {
            HStack {
                Text(landmark.name)
                    .font(.title)
                if let landmarkIndex = landmarkIndex {
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
            }
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
    let modelData = ModelData()
    return LandmarkDetailView(landmark: modelData.landmarks[3])
        .environment(modelData)
}
