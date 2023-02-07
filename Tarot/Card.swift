//
//  CardsList.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/5/23.
//

import SwiftUI

struct Card: View {
    let tarot: Tarot
    @GestureState var press = false
    @State var play = false

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(tarot.the)
                .font(.custom("NewSpiritTRIAL-Regular", size: 16))
            Text(tarot.name)
                .font(.custom("NewSpiritTRIAL-SemiBold", size: 36))
            Spacer()
            HStack() {
                Text(tarot.number)
                    .font(.custom("NewSpiritTRIAL-Regular", size: 86))
                Spacer()
                VStack(alignment: .leading, spacing: 12.0) {
                    Text(tarot.regular)
                        .font(.custom("NewSpiritTRIAL-Regular", size: 12))
                    Text(tarot.reverse)
                        .font(.custom("NewSpiritTRIAL-Regular", size: 12))
                        .multilineTextAlignment(.trailing)
                        .rotationEffect(.degrees(180))
                        .fontWeight(play ? .bold : .regular)
                }
                .frame(width: 150.0)
            }
        }
        .foregroundColor(Color(tarot.foreground))
        .frame(width: 240, height: 400.0)
        .padding(50)
        .background(Color(tarot.background))
        .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
            .stroke(Color(tarot.foreground))
            .padding()
        )
        .shadow(radius: 10)
        .rotationEffect(.degrees( play ? 180: 0))
        .rotation3DEffect(
            Angle(degrees: press ? 5 : 0),
            axis: (x: -0.1, y: 0.1, z: 0),
            anchor: .center,
            anchorZ: 0.0,
            perspective: 1
        )
        .rotation3DEffect(
            Angle(degrees: play ? 10 : 0),
            axis: (x: -0.1, y: 0, z: 0),
            anchor: .center,
            anchorZ: 0.0,
            perspective: 1
        )
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: press)
        .gesture(
            LongPressGesture(minimumDuration: 0.5)
                .updating($press) { currentState, gestureState, transaction in
                    gestureState = currentState
                }
                .onEnded { value in
                    play.toggle()
                }
            
        )
        .onTapGesture {
            play.toggle()
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tarot: Tarot(
              name: "High Preistess",
              number: "0",
              the: "The",
              regular: "New beginnings, innocence, adventure",
              reverse: "Recklessness, fearlessness, risk",
              background: "Light Gray",
              foreground: "Cyan",
              category: "Major Arcana"))
            .previewDevice("iPhone 14 Pro")
    }
}
