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
        Text("Profile for \(draftProfile.username)")
    }
}

#Preview {
    ProfileHostView()
}
