//
//  CategoryItemView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct CategoryItemView: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 150,  height: 150)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(15)
    }
}

#Preview {
    CategoryItemView(landmark: ModelData().landmarks[0])
}
