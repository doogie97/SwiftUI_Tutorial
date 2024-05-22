//
//  PageView.swift
//  Landmarks
//
//  Created by Doogie on 5/22/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCardView(landmark: $0) })
}
