//
//  Cups.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/6/23.
//

import SwiftUI

struct Cups: View {
    let tarot = TarotInfo()
    @State private var selectedTarot: Tarot?
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Cups")
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
                        if tarot.category == "Cups" {
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

struct Cups_Previews: PreviewProvider {
    static var previews: some View {
        Cups()
            .previewDevice("iPhone 14 Pro")
    }
}
