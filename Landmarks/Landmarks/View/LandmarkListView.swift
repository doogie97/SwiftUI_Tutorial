//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkListView()
}
