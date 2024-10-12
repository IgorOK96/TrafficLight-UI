//
//  CircleRedView.swift
//  TrafficLight UI
//
//  Created by user246073 on 10/12/24.
//

import SwiftUI


struct CircleView: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.gray)
                .frame(width: 140)
            Circle()
                .foregroundStyle(color)
                .frame(width: 115)
                .opacity(opacity)
        }
    }
}

#Preview {
    CircleView(color: .red, opacity: 0.3)
}

