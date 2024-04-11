//
//  HomeView.swift
//  Auth0Example1
//
//  Created by Kentaro Mihara on 2024/04/04.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var service: Auth0Service
    
    var body: some View {
        VStack {
            userImage
            Text(service.userProfile.name)
                .padding()
            logoutButton
                .padding()
        }
    }
    
    private var userImage: some View {
        AsyncImage(url: URL(string: service.userProfile.picture)){ response in
            response.image?
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
                .cornerRadius(50)
        }
    }
    
    private var logoutButton: some View {
        Button {
            logout()
        } label: {
            Text("Log out")
        }
        .fontWeight(.black)
        .frame(width: 160, height: 48)
        .foregroundColor(.white)
        .background(Color.primary)
        .cornerRadius(24)
    }
}


extension HomeView {
    private func logout() {
        service.logout()
    }
}
