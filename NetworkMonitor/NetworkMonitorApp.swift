//
//  NetworkMonitorApp.swift
//  NetworkMonitor
//
//  Created by Satyadev Chauhan on 24/08/24.
//

import SwiftUI

@main
struct NetworkMonitorApp: App {

    @State private var networkMonitor = NetworkMonitor()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(networkMonitor)
        }
    }
}
