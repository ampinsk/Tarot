//
//  NavigationItem.swift
//  Tarot
//
//  Created by Amanda Pinsker on 1/30/24.
//

import SwiftUI
import CoreMotion

struct NavItem: View {
    let buttonText: String
    let Major: Bool
    let NavColor: Color
    @State private var motionManager = CMMotionManager()
    @State private var rotationX: Double = 0
    @State private var rotationY: Double = 0
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(buttonText)
                .padding(30)
                .foregroundColor(.white)
            .font(.custom("NewSpiritTRIAL-Regular", size: 20))
                Spacer()
            }
        }
        .frame(width: Major ? 320 : 180, height: Major ? 180 : 220)
        .background(NavColor)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(-10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
            .stroke(Color.white))
        .rotation3DEffect(
            .degrees(rotationX),
            axis: (x: 1.0, y: 0.0, z: 0.0)
        )
        .rotation3DEffect(
            .degrees(rotationY),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .onAppear {
            startMotionUpdates()
        }
        .onDisappear {
            stopMotionUpdates()
        }
    }

    private func startMotionUpdates() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.1
            motionManager.startDeviceMotionUpdates(to: .main) { data, _ in
                guard let attitude = data?.attitude else { return }

                // Use attitude data to set rotation angles
                let pitch = attitude.pitch * 180 / .pi
                let roll = attitude.roll * 180 / .pi

                // Adjust the factor based on your desired sensitivity
                self.rotationX = (-pitch + 45) * 0.2 // Adjust this factor
                self.rotationY = roll * 0.2 // Adjust this factor
            }
        }
    }

    private func stopMotionUpdates() {
        motionManager.stopDeviceMotionUpdates()
    }
}

#Preview {
    VStack {
        NavItem(
            buttonText: "Hello",
            Major: false,
            NavColor: Color.blue
        ).padding(50)
        NavItem(
            buttonText: "Hello",
            Major: true,
            NavColor: Color.red
        )
    }
}
