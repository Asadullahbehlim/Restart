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
            ZStack {
                // Parts of custom Button
                
             //  1. Background
                Capsule()
                    .fill(Color.white.opacity(0.2))
                
                Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(10)
            //   2. Call-To-Action Button
                
                Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .offset(x: 20)
                
            //   3. Capsule (Dynamic width)
                
                HStack {
                    Capsule()
                        .fill(Color("ColorRed"))         .frame(width: 80)
                    Spacer()
                }
                
                
            //   4. Draggable circle
                HStack {
                    ZStack {
                        Circle()
                            .fill(Color("ColorRed"))
                        Circle()
                            .fill(.black.opacity(0.15))
                            .padding(10)
                        Image(systemName: "chevron.right.2")
                            .foregroundColor(.white)
                            .font(.system(size: 26, weight: .bold))
                        
                        
                    }
                    .frame(width: 80, height: 80, alignment: .center)
                    .onTapGesture {
                        isOnboardingScreenActive = false
                    }
                    Spacer()
                } // Hstack
                
            } // Footer
            .frame(height: 90, alignment: .center)
            .padding()
                
        }  // Vstack
   
            } //: ZSTACK
            
            
        }
}
    
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
