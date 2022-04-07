//
//  MainView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("HomeView")
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                
                Text("VideosView")
                    .tabItem{
                        Label("Videos", systemImage: "film")
                    }
                
                Text("AddVideosView")
                    .tabItem{
                        Label("", systemImage: "plus")
                    }
                
                Text("AnalyticsView")
                    .tabItem{
                        Label("Analytics", systemImage: "chart.bar")
                    }
                
                Text("WatchView")
                    .tabItem {
                        Label("Watch", systemImage: "play.tv")
                    }
            }
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
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
