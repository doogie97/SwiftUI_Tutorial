//
//  ProfileHostView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct ProfileHostView: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummaryView(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
            
        }
        .padding()
    }
}

#Preview {
    ProfileHostView()
        .environment(ModelData())
}
