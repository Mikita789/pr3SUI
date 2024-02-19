//
//  ContentView.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    AllNewsView()
                }, label: {
                    Text("Get news!")
                        .padding()
                        .foregroundStyle(.red)
                        .font(.system(.title, design: .monospaced))
                        .background(
                            .ultraThinMaterial
                        )
                        .clipShape(.capsule)
                })
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.gray, .blue.opacity(0.3), .green.opacity(0.3), .gray],
                               startPoint: .topLeading, endPoint: .bottomTrailing)
            )
        }
    }
}

#Preview {
    ContentView()
}
