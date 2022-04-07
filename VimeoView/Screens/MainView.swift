//
//  MainView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Text("HomeView")
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                    .tag(0)
                
                Text("VideosView")
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem{
                        Label("Videos", systemImage: "film")
                    }
                    .tag(1)
                
                Text("AddVideosView")
                    .tabItem{
                        Label("", systemImage: "plus")
                    }
                
                Text("AnalyticsView")
                    .onTapGesture {
                        selectedIndex = 3
                    }
                    .tabItem{
                        Label("Analytics", systemImage: "chart.bar")
                    }
                    .tag(2)
                
                Text("WatchView")
                    .onTapGesture {
                        selectedIndex = 4
                    }
                    .tabItem {
                        Label("Watch", systemImage: "play.tv")
                    }
                    .tag(3)
            }
            .navigationBarTitle(tabTitle)
            .accentColor(.black)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("to NotificationsView")
                    }) {
                        Label("", systemImage: "bell")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 10) {
                        Button(action: {
                            print("to SearchView")
                        }) {
                            Label("", systemImage: "magnifyingglass")
                        }
                        
                        Button(action: {
                            print("present ProfileView")
                        }) {
                            Label("Profile", systemImage: "person.circle")
                        }
                    }
                }
            }
        }
        
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Home"
        case 1: return "Videos"
        case 2: return "Analytics"
        case 3: return "Watch"
        default: return ""
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
