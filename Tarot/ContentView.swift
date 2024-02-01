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
                    Text("Look up a Tarot card")
                        .foregroundColor(.white)
                        .font(.custom("NewSpiritTRIAL-SemiBold", size: 40))
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: MajorArcana() ) {
                        NavItem(
                            buttonText: "Major Arcana",
                            Major: true,
                            NavColor: Color.gray
                        ).rotationEffect(Angle(degrees: 4))
                            .padding(.bottom, 10)
                    }
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: -30),
                        GridItem()
                    ], spacing: 20) {
                        
                        NavigationLink(destination: Cups() ) {
                            NavItem(
                                buttonText: "Cups",
                                Major: false,
                                NavColor: Color.blue
                            )
                            .rotationEffect(.degrees(-4))
                        }
                        NavigationLink(destination: Pentacles() ) {
                            NavItem(
                                buttonText: "Pentacles",
                                Major: false,
                                NavColor: Color.yellow
                            )
                            .rotationEffect(.degrees(10))
                        }
                        NavigationLink(destination: Wands() ) {
                            NavItem(
                                buttonText: "Wands",
                                Major: false,
                                NavColor: Color.green
                            )
                            .rotationEffect(.degrees(5))
                        }
                        NavigationLink(destination: Swords() ) {
                            NavItem(
                                buttonText: "Swords",
                                Major: false,
                                NavColor: Color.red
                            )
                            .rotationEffect(.degrees(-7))
                        }
                    }
                }
            }
        }.transition(.slide)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
