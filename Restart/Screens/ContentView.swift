//
//  ContentView.swift
//  Restart
//
//  Created by Asadullah Behlim on 22/04/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    
    @AppStorage ("OnboardingScreen") var isOnboardingScreenActive : Bool = true
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if isOnboardingScreenActive {
                OnboardingScreen()
            }
            else {
                Home()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
