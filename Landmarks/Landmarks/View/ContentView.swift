//
//  ContentView.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection,
                content:  {
            CategoryHomeView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        })

    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
