//
//  ContentView.swift
//  TrafficLight UI
//
//  Created by user246073 on 10/12/24.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

struct ContentView: View {
    @State private var currentLight: CurrentLight? = nil
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            ZStack {
                VStack() {
                    Color.black
                        .frame(width: 220, height: 520)
                        .cornerRadius(20)
                        .offset(y: -50)
                    
                    Button(action: traffic) {
                        Text(buttonText)
                            .font(.title)
                            .foregroundStyle(.cyan)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .cornerRadius(20)
                            .offset(y: 35)
                    }
                }
                VStack {
                    CircleView(color: .red, opacity: turnOn(for: .red))
                    CircleView(color: .yellow, opacity: turnOn(for: .yellow))
                    CircleView(color: .green, opacity: turnOn(for: .green))
                }
                .offset(y: -85)
            }
        }
    }

    private func turnOn(for light: CurrentLight) -> Double {
            return currentLight == light ? 1.0 : 0.4
        }
    
    private func traffic() {
        if currentLight == nil {
            buttonText = "NEXT"
            currentLight = .red
        } else {
            switch currentLight {
            case .red:
                currentLight = .yellow
            case .yellow:
                currentLight = .green
            case .green:
                currentLight = .red
            default:
                break
            }
        }
    }
}

#Preview {
    ContentView()
}



