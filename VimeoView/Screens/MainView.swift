//
//  MainView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
