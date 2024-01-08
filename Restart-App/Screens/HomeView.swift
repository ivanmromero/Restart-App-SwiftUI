//
//  HomeView.swift
//  Restart-App
//
//  Created by Ivan Romero on 08/01/2024.
//

import SwiftUI


struct HomeView: View {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        }
    }
}

#Preview {
    HomeView()
}
