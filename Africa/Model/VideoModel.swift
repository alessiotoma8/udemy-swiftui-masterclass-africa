//
//  VIdeoModel.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import Foundation

struct VideoModel: Codable, Identifiable{
    let id: String
    let name:String
    let headline: String
    
    var thumbnail:String{
        "video-\(id)"
    }
}
