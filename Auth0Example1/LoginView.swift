//
//  LoginView.swift
//  Auth0Example1
//
//  Created by Kentaro Mihara on 2024/04/04.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @EnvironmentObject var service: Auth0Service
    
    var body: some View {
        VStack {
            title
            loginButton
        }
    }
    
    private var title: some View {
        Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.black)
    }
    
    private var loginButton: some View {
        Button {
            login()
        } label: {
            Text("Log in")
        }
        .fontWeight(.black)
        .frame(width: 160, height: 48)
        .foregroundColor(.white)
        .background(Color.primary)
        .cornerRadius(24)
    }
}


extension LoginView {
    private func login() {
        service.login()
    }
}
