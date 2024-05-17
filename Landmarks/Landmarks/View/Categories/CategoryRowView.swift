//
//  CategoryRowView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct CategoryRowView: View {
    var categoryName: String
    var item: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(item, id: \.self) { landmark in
                        NavigationLink {
                            LandmarkDetailView(landmark: landmark)
                        } label: {
                            CategoryItemView(landmark: landmark)
                        }

                    }
                }
                .frame(height: 185)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRowView(
        categoryName: landmarks[0].category.rawValue,
        item: Array(landmarks.prefix(4))
    )
}
