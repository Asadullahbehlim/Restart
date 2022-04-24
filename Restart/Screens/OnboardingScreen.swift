//
//  OnboardingScreen.swift
//  Restart
//
//  Created by Asadullah Behlim on 22/04/22.
//

import SwiftUI

struct OnboardingScreen: View {
    // MARK: - Property
    @AppStorage ("OnboardingScreen") var isOnboardingScreenActive: Bool = true
    
   // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20) {
            
            ZStack {
                Text("OnBoarding")
            }
            
            Button(action: {
                isOnboardingScreenActive = false
            }) {
                Text("Start")
            }
        } //: Vstack
}
    
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
