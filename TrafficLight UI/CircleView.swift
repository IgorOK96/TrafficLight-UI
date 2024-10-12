//
//  CircleRedView.swift
//  TrafficLight UI
//
//  Created by user246073 on 10/12/24.
//

import SwiftUI


struct CircleView: View {
    var color: Color
    var isActive: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.gray)
                .frame(width: 140)
            Circle()
                .foregroundStyle(color)
                .frame(width: 115)
                .opacity(isActive ? 1.0 : 0.4)
        }
    }
}

#Preview {
    CircleView(color: .red, isActive: true)
}

