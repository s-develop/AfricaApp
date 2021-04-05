//
//  InsetFactView.swift
//  Africa
//
//  Created by Sergei on 30.03.2021.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        Group {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                     Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168)
            
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
