//
//  NavigationItem.swift
//  Tarot
//
//  Created by Amanda Pinsker on 1/30/24.
//

import SwiftUI

struct NavItem: View {
    let buttonText: String
    let Major: Bool
    let NavColor: Color
    
    var body: some View {
        VStack {
            Text(buttonText)
                .frame(width: Major ? 300 : 150, height: Major ? 180 : 200)
            .foregroundColor(.black)
            .font(.custom("NewSpiritTRIAL-SemiBold", size: 24))
        }
        .background(NavColor)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavItem(
        buttonText: "Hello",
        Major: true,
        NavColor: Color.blue
    )
}
