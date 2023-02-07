//
//  ContentView.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/5/23.
//

import SwiftUI

struct ContentView: View {
    let tarot = TarotInfo()
    
    var body: some View {
        NavigationView {
            List() {
                NavigationLink(destination: MajorArcana() ) {
                    Text("Major Arcana")
                }
                NavigationLink(destination: Cups() ) {
                    Text("Cups")
                }
                NavigationLink(destination: MajorArcana() ) {
                    Text("Wands")
                }
                NavigationLink(destination: MajorArcana() ) {
                    Text("Swords")
                }
                NavigationLink(destination: MajorArcana() ) {
                    Text("Pentacles")
                }
            }
            .navigationTitle("Tarot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
