//
//  Cups.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/6/23.
//

import SwiftUI

struct Cups: View {
    let tarot = TarotInfo()
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(tarot.tarotData) { tarot in
                    if tarot.category == "Cups" {
                        Card(tarot: tarot)
                            .padding(20.0)
                    }
                }
            }
            .padding(20.0)
        }
    }
}

struct Cups_Previews: PreviewProvider {
    static var previews: some View {
        Cups()
    }
}
