//
//  SmallCard.swift
//  Tarot
//
//  Created by Amanda Pinsker on 1/31/24.
//

import SwiftUI

struct SmallCard: View {
    let tarot: Tarot
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text(tarot.number)
            .font(.custom("NewSpiritTRIAL-Regular", size: 36))
            Spacer()
            Text(tarot.the)
                .font(.custom("NewSpiritTRIAL-Regular", size: 12))
            Text(tarot.name)
                .font(.custom("NewSpiritTRIAL-SemiBold", size: 12))
                .multilineTextAlignment(.center)
        }
        .foregroundColor(Color(tarot.foreground))
        .frame(width: 100, height: 150.0)
        .padding(20)
        .background(Color(tarot.background))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius:10, style: .continuous)
            .stroke(Color(tarot.foreground))
            .padding(10)
        )
        .shadow(radius: 10)
    }
}

#Preview {
    SmallCard(tarot: Tarot(
        name: "High Preistess",
        number: "0",
        the: "The",
        regular: "New beginnings, innocence, adventure",
        reverse: "Recklessness, fearlessness, risk",
        background: "Light Gray",
        foreground: "Cyan",
        category: "Major Arcana"))
}
