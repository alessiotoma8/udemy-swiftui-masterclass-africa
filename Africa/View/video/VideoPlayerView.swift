//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack{
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
                
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

private let videos: [VideoModel] = Bundle.main.decode("videos.json")
#Preview {
    NavigationView{
        VideoPlayerView(videoSelected: "lion",videoTitle: "Lion")
    }
}
