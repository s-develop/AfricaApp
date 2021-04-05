//
//  VidePlayerView.swift
//  Africa
//
//  Created by Sergei on 31.03.2021.
//

import SwiftUI
import AVKit

struct VidePlayerView: View {
     
    var videoSelected: String
    var videoTitle: String
    

    var body: some View {
 
        VideoPlayer(player:  AVPlayer(url: Bundle.main.url(forResource: videoSelected, withExtension: "mp4")!))
           
    }
}

struct VidePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VidePlayerView(videoSelected:"lion" , videoTitle: "lion" )
    }
}
