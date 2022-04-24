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
                Color("ColorBlue")
                    .ignoresSafeArea(.all, edges: .all)
                
        VStack(spacing: 20) {
            // MARK: - Header
            VStack {
                    Text("Share")
                        .foregroundColor(.white)
                        .font(.system(size: 65))
                    .fontWeight(.heavy)
                
                Text("It's not how much we give but how much love we put into giving. ")
                    .foregroundColor(.white)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
                } //Header
            // MARK: - Center
            
            ZStack {
                ZStack {
                    Circle()
                        .stroke(.white.opacity(0.3), lineWidth: 40)
                        .frame(width: 260, height: 260, alignment: .center)
                    Circle()
                        .stroke(.white.opacity(0.3), lineWidth: 80)
                        .frame(width: 260, height: 260, alignment: .center)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
            } //Center
            
                         
           // MARK: - footer
            
                
                
        }
   
            }
            
        }
}
    
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
