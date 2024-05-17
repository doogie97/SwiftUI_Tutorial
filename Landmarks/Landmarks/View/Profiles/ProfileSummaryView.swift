//
//  ProfileSummaryView.swift
//  Landmarks
//
//  Created by Doogie on 5/17/24.
//

import SwiftUI

struct ProfileSummaryView: View {
    @Environment(ModelData.self) var modelData
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
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadgeView(name: "First Hike")
                            HikeBadgeView(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadgeView(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummaryView(profile: Profile.default)
        .environment(ModelData())
}
