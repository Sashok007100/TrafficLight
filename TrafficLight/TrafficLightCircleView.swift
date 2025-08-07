//
//  TrafficLightCircleView.swift
//  TrafficLight
//
//  Created by Alexandr Artemov (Mac Mini) on 07.08.2025.
//

import SwiftUI

struct TrafficLightCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 130, height: 130)
            .foregroundStyle(color)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
            .padding(8)
    }
}

#Preview {
    TrafficLightCircleView(color: .red)
}
