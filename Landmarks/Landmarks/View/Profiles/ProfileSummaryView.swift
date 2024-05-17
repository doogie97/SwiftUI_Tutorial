//
//  ProfileSummaryView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct ProfileSummaryView: View {
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(profile.username)
                    .font(.title)
                    .bold()
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }
        }
        Text("Hello, World!")
    }
}

#Preview {
    ProfileSummaryView(profile: Profile.default)
}
