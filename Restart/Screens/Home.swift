//
//  Home.swift
//  Restart
//
//  Created by Asadullah Behlim on 22/04/22.
//

import SwiftUI

struct Home: View {
    // MARK: - Property
    
    @AppStorage ("OnboardingScreen") var isOnboardingScreenActive : Bool = false
    
    @State private var isAnimation: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            Spacer()
            
            ZStack {
                Circle()
                    .stroke(.gray.opacity(0.15), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                    .blur(radius: isAnimation ? 1 :10)
                    .opacity(isAnimation ? 1 : 0)
                    .scaleEffect(isAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1), value: isAnimation)
                    .onAppear(perform: {
                    isAnimation = true
                    })
                Circle()
                    .stroke(.gray.opacity(0.15), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                    .blur(radius: isAnimation ? 1 :10)
                    .opacity(isAnimation ? 1 : 0)
                    .scaleEffect(isAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1).repeatForever(), value: isAnimation)
                    .onAppear(perform: {
                    isAnimation = true
                    })
                Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
                .offset(y: isAnimation ? 35 : -35)
                .animation(.easeOut(duration: 5).repeatForever(), value: isAnimation)
                Spacer()
            }
            
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .fontWeight(.light)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding()
              
            // MARK: - FOOTER
            Spacer()
            Button(action: {
                withAnimation {
            isOnboardingScreenActive = true
              }
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text ("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } // vstack
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                isAnimation = true
            })
        })
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
  }
}
