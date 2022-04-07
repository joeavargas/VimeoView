//
//  WatchView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct WatchView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                
                // MARK: - My Feed
                HStack {
                    Text("My Feed")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                }
                
                VStack(spacing: 20) {
                    Image(systemName: "tv")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                    
                    Text("Follow creaters, categories and more")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    
                    Button("Let's go") {
                        print("Let's go button pressed")
                    }
                    .frame(width: UIScreen.main.bounds.width / 3)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Capsule())
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 2.8)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(UIColor.lightGray), lineWidth: 0.7)
                )
                .padding(.horizontal)
                
                // MARK: - Staff picks
                HStack {
                    Text("Staff Picks")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
                    Button("View All"){
                        print("View All button pushed")
                    }
                    .foregroundColor(.blue)
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.blue)
                }
                .padding()
                
                // MARK: - Vertical scrollview
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<10){ _ in
                            VStack {
                                Image("video-image")
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Zouj - Delete After Death")
                                            .fontWeight(.bold)
                                        HStack {
                                            Text("Laura Jayne")
                                            Spacer()
                                            Image(systemName: "ellipsis")
                                                .foregroundColor(.secondary)
                                        }
                                        Text("3.5k view - 1 week ago")
                                            .foregroundColor(Color(UIColor.lightGray))
                                    }
                                    .layoutPriority(100)
                                    Spacer()
                                }
                                .padding()
                            }
                            .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 3.5)
                            .cornerRadius(10)
                            .overlay (
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(UIColor.lightGray), lineWidth: 0.5)
                            )
                            .padding([.top, .horizontal], 2)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
        WatchView()
    }
}
