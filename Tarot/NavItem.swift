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
                .frame(width: Major ? 320 : 180, height: Major ? 180 : 220)
            .foregroundColor(.white)
            .font(.custom("NewSpiritTRIAL-Regular", size: 24))
        }
        .background(NavColor)
        
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .padding(-10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(Color.white))
        
    }
}

#Preview {
    NavItem(
        buttonText: "Hello",
        Major: false,
        NavColor: Color.blue
    )
}
