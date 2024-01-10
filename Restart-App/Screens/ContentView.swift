//
//  ContentView.swift
//  Restart-App
//
//  Created by Ivan Romero on 08/01/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            switch isOnboardingViewActive {
                case true:
                    OnboardingView()
                case false:
                    HomeView()
            }
        }
        .animation(.easeOut(duration:0.5), value: isOnboardingViewActive)
    }
}

#Preview {
    ContentView()
}
