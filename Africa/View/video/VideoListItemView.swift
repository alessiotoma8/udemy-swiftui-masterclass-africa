//
//  VideoListItem.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: VideoModel
    
    var body: some View {
        HStack(spacing: 10){
            ZStack{
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

private let videos: [VideoModel] = Bundle.main.decode("videos.json")
#Preview {
    VideoListItemView(video: videos[0])
}
