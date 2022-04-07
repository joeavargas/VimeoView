//
//  WatchView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct WatchView: View {
    var body: some View {
        VStack {
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
        }
    }
}

struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
        WatchView()
    }
}
