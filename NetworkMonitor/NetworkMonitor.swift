//
//  NetworkMonitor.swift
//  NetworkMonitor
//
//  Created by Satyadev Chauhan on 24/08/24.
//

import Foundation
import Network

@Observable
final class NetworkMonitor {
    
    private let networkMonitor = NWPathMonitor()
    private let workerQueue = DispatchQueue(label: "NetworkMonitor")
    
    var isConnected = false
    
    init() {
        networkMonitor.pathUpdateHandler = { path in
            self.isConnected = path.status == .satisfied
        }
        networkMonitor.start(queue: workerQueue)
    }
}
