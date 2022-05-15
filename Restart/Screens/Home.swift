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
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            Spacer()
            
            ZStack {
                Circle()
                    .stroke(.gray.opacity(0.15), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(.gray.opacity(0.15), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
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
            isOnboardingScreenActive = true
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
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
  }
}
