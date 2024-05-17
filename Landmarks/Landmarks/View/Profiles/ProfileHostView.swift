//
//  ProfileHostView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct ProfileHostView: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummaryView(profile: draftProfile)
        }
        .padding()

    }
}

#Preview {
    ProfileHostView()
}
