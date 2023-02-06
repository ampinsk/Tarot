//
//  ContentView.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("The")
                .font(.custom("NewSpiritTRIAL-Regular", size: 16))
            Text("Fool")
                .font(.custom("NewSpiritTRIAL-SemiBold", size: 36))
            Spacer()
            HStack() {
                Text("1")
                    .font(.custom("NewSpiritTRIAL-Regular", size: 86))
                Spacer()
                VStack(alignment: .leading, spacing: 12.0) {
                    Text("New beginnings, innocence, adventure")
                        .font(.custom("NewSpiritTRIAL-Regular", size: 12))
                    Text("Recklessness, fearlessness, risk")
                        .font(.custom("NewSpiritTRIAL-Regular", size: 12))
                }
                .frame(width: 150.0)
            }
        }
        .foregroundColor(.white)
        .frame(width: 240.0, height: 400.0)
        .padding(50)
        .background(Color(.red))
        .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
            .stroke(.white)
            .padding()
        )
        .shadow(radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
