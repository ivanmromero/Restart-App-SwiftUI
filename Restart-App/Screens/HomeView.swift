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
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack (spacing: 20) {
                // MARK: - HEADER
                Spacer()
                ZStack {
                    CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                    
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .offset(y: isAnimating ? 35 : -35)
                        .animation(.easeInOut(duration: 4).repeatForever(), value: isAnimating)
                }
                // MARK: - CENTER
                Text("""
                     The time that leads to mastery is dependent on the intensity of our focus
                     """)
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                
                // MARK: - FOOTER
                Spacer()
                ZStack {
                    Button(action: {
                        playSound(sound: "success", type: "m4a")
                        withAnimation {
                            isOnboardingViewActive = true
                        }
                    }, label: {
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .imageScale(.large)
                        Text("Restart")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                    })
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                }
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isAnimating = true
            }
        })
        .preferredColorScheme(.light)
    }
}

#Preview {
    HomeView()
}
