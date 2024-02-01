//
//  Cups.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/6/23.
//

import SwiftUI

struct Swords: View {
    let tarot = TarotInfo()
    @State private var selectedTarot: Tarot?
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Swords")
                    .foregroundColor(.white)
                    .font(.custom("NewSpiritTRIAL-SemiBold", size: 40))
                    .multilineTextAlignment(.center)
                    .padding(.top)
                LazyVGrid(columns: [
                    GridItem(),
                    GridItem(),
                    GridItem()
                ], spacing: 20) {
                    ForEach(tarot.tarotData) { tarot in
                        if tarot.category == "Swords" {
                            NavigationLink(
                                destination: Card(tarot: tarot),
                                tag: tarot,
                                selection: $selectedTarot
                            ){
                                SmallCard(tarot: tarot)
                            }
                        }
                    }
                }
                .padding(30.0)
            }
            .background(Color.black)
        }
    }
}

struct Swords_Previews: PreviewProvider {
    static var previews: some View {
        Swords()
            .previewDevice("iPhone 14 Pro")
    }
}
