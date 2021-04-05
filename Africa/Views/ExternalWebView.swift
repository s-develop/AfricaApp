//
//  ExternalWebView.swift
//  Africa
//
//  Created by Sergei on 30.03.2021.
//

import SwiftUI

struct ExternalWebView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            
            Group{
            Image(systemName: "arrow.up.right.square")
                Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
            }
        }
    }
}

struct ExternalWebView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
