//
//  MajorArcanaList.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/6/23.
//

import SwiftUI

struct MajorArcana: View {
    let tarot = TarotInfo()
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(tarot.tarotData) { tarot in
                    if tarot.category == "Major Arcana" {
                        Card(tarot: tarot)
                            .padding(20.0)
                    }
                }
            }
            .padding(20.0)
        }
    }
}

struct MajorArcana_Previews: PreviewProvider {
    static var previews: some View {
        MajorArcana()
            .previewDevice("iPhone 14 Pro")
    }
}
