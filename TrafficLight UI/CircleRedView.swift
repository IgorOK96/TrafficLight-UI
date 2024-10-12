//
//  CircleRedView.swift
//  TrafficLight UI
//
//  Created by user246073 on 10/12/24.
//

import SwiftUI

struct CircleRedView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 140)
                Circle()
                    .foregroundStyle(.red)
                    .frame(width: 115)
                    .opacity(0.4)
            }
            ZStack {
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 140)
                Circle()
                    .foregroundStyle(.yellow)
                    .frame(width: 115)
                    .opacity(0.4)
            }
            ZStack {
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 140)
                Circle()
                    .foregroundStyle(.green)
                    .frame(width: 115)
                    .opacity(0.4)
            }
        }
    }
}

#Preview {
    CircleRedView()
}

