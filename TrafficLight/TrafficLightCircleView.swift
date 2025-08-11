//
//  TrafficLightCircleView.swift
//  TrafficLight
//
//  Created by Alexandr Artemov (Mac Mini) on 07.08.2025.
//

import SwiftUI

struct TrafficLightCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 130)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    TrafficLightCircleView(color: .red, opacity: 1)
}
