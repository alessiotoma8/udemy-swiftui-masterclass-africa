//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName:String,fileFormat:String) -> AVPlayer{
    let urlFile = Bundle.main.url(forResource: fileName, withExtension: fileFormat)
    if urlFile != nil{
        videoPlayer = AVPlayer(url: urlFile!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
