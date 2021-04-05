//
//  VideoModel.swift
//  Africa
//
//  Created by Sergei on 30.03.2021.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    //Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
    
}
