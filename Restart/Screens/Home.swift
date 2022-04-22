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
            Text("Home")
            
            Button(action: {
            isOnboardingScreenActive = true
            }) {
                Text ("Restart")
            }
        }

    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
