//
//  TrafficLightButtonView.swift
//  TrafficLight
//
//  Created by Alexandr Artemov (Mac Mini) on 11.08.2025.
//

import SwiftUI

struct TrafficLightButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title)
                .bold()
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
}

#Preview {
    TrafficLightButtonView(title: "START", action: {})
}
