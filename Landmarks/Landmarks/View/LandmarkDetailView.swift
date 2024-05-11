//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            bottomView
            Spacer()
        }
    }
    
    private var bottomView: some View {
        VStack(alignment: .leading) {
            Text("Tutle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    LandmarkDetailView()
}
