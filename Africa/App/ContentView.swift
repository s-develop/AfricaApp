//
//  ContentView.swift
//  Africa
//
//  Created by Sergei on 28.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] =
        Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top:0, leading:0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    
                    NavigationLink(destination: AnimalDetailView(animal: animal )){
                        AnimalListItemView(animal: animal) 
                    }
                    
                   
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
