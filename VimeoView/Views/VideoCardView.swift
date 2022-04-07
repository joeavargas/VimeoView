//
//  VideoCardView.swift
//  VimeoView
//
//  Created by Joe Vargas on 4/7/22.
//

import SwiftUI

struct VideoCardView: View {
    var imageName: String
    var videoTitle: String
    var viewCount: Int
    var creatorName: String
    var postedDate: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(videoTitle)
                        .fontWeight(.bold)
                    HStack {
                        Text(creatorName)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .foregroundColor(.secondary)
                    }
                    Text("\(viewCount) views - \(postedDate)")
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

struct VideoCardView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardView(imageName: "video-image", videoTitle: "Video Title Here", viewCount: 3500, creatorName: "Jane Doe", postedDate: "1 week ago")
    }
}
