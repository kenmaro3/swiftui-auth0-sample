//
//  ContentView.swift
//  Auth0Example1
//
//  Created by Kentaro Mihara on 2024/04/04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var service: Auth0Service
    var body: some View {
        if service.isAuthenticated {
            HomeView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
