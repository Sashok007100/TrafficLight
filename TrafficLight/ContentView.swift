//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexandr Artemov (Mac Mini) on 06.08.2025.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var currentLight = CurrentLight.off
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            TrafficLightCircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            )
            TrafficLightCircleView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3
            )
            TrafficLightCircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )
            
            Spacer()
            
            TrafficLightButtonView(title: buttonTitle, action: didTapSwitchLight)
        }
        .padding()
    }
    
    private func didTapSwitchLight() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
