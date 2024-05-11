//
//  CircleImage.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("charleyrivers"))
}
