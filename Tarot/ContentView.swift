//
//  ContentView.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/5/23.
//

import SwiftUI
import Swift

struct ContentView: View {
    let tarot = TarotInfo()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    Text("Look up a Tarot meaning")
                        .foregroundColor(.white)
                        .font(.custom("NewSpiritTRIAL-SemiBold", size: 36))
                    NavigationLink(destination: MajorArcana() ) {
                        NavItem(
                            buttonText: "Major Arcana",
                            Major: true,
                            NavColor: Color.gray
                        )
                    }
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: -70),
                        GridItem()
                    ], spacing: 10) {
                        
                        NavigationLink(destination: Cups() ) {
                            NavItem(
                                buttonText: "Cups",
                                Major: false,
                                NavColor: Color.blue
                            )
                        }
                        NavigationLink(destination: MajorArcana() ) {
                            NavItem(
                                buttonText: "Pentacles",
                                Major: false,
                                NavColor: Color.yellow
                            )
                        }
                        NavigationLink(destination: MajorArcana() ) {
                            NavItem(
                                buttonText: "Wands",
                                Major: false,
                                NavColor: Color.green
                            )
                        }
                        NavigationLink(destination: MajorArcana() ) {
                            NavItem(
                                buttonText: "Swords",
                                Major: false,
                                NavColor: Color.red
                            )
                        }
                        
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
