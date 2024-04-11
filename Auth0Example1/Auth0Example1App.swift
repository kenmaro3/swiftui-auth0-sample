//
//  Auth0Example1App.swift
//  Auth0Example1
//
//  Created by Kentaro Mihara on 2024/04/04.
//

import SwiftUI

@main
struct Auth0Example1App: App {
    @StateObject var service: Auth0Service = Auth0Service()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(service)
        }
    }
}
