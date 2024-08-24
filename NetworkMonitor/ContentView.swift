//
//  ContentView.swift
//  NetworkMonitor
//
//  Created by Satyadev Chauhan on 24/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(NetworkMonitor.self) private var newtworkMonitor
    
    var body: some View {
        VStack(spacing: 20) {
            // Wi-Fi Icon with Animation
            Image(systemName: newtworkMonitor.isConnected ? "wifi" : "wifi.slash")
                .font(.system(size: 100))
                .transition(.scale) // Animation transition style
                .animation(.easeInOut(duration: 0.5), value: newtworkMonitor.isConnected)
            
            Text(newtworkMonitor.isConnected ? "Connected" : "Disconnected")
                .font(.title)
                .fontWeight(.bold)
        }
        .foregroundStyle(newtworkMonitor.isConnected ? .green : .red)
    }
    
}

#Preview {
    ContentView()
        .environment(NetworkMonitor())
}
