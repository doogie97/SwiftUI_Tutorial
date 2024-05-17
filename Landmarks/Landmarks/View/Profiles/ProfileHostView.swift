//
//  ProfileHostView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct ProfileHostView: View {
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
                ProfileSummaryView(profile: modelData.profile)
        }
        .padding()
    }
}

#Preview {
    ProfileHostView()
        .environment(ModelData())
}
