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
        List(tarot.tarotData) { tarot in
            if tarot.category == "Cups" {
                Card(tarot: tarot)
            }
        }
    }
}

struct Cups_Previews: PreviewProvider {
    static var previews: some View {
        Cups()
    }
}
