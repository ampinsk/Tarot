//
//  NavigationItem.swift
//  Tarot
//
//  Created by Amanda Pinsker on 1/30/24.
//

import SwiftUI

struct NavItem: View {
    let buttonText: String
    
    var body: some View {
        Text(buttonText)
    }
}

#Preview {
    NavItem(buttonText: "Hello")
}
