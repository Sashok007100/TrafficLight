//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexandr Artemov (Mac Mini) on 06.08.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var currentLight = CurrentLight.red
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    private var colorRed = Color.red
    private var colorYellow = Color.yellow
    private var colorGreen = Color.green
    
    var body: some View {
        VStack {
            TrafficLightCircleView(color: colorRed.opacity(redOpacity))
            TrafficLightCircleView(color: colorYellow.opacity(yellowOpacity))
            TrafficLightCircleView(color: colorGreen.opacity(greenOpacity))
            
            Spacer()
            
            Button {
                didTapSwitchLight()
            } label: {
                Text("\(buttonTitle)")
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: 200, maxHeight: 55)
            .background(.tint)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay{
                RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 20)
            
            

        }
        .padding()
    }
// MARK: - CurrentLight
extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
