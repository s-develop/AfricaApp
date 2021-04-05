//
//  CoverImageView.swift
//  Africa
//
//  Created by Sergei on 28.03.2021.
//

import SwiftUI

struct CoverImageView: View {
    //Mark : - Properties
    
    let coverImages: [CoverImage] =
        Bundle.main.decode("covers.json")
    
    //Mark: - BODY
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }.tabViewStyle(PageTabViewStyle())
       
    }
}

//Mark: - Preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
