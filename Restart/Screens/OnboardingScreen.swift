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
    
    @State private var ButtonWidth : Double = UIScreen.main.bounds.width - 80
    
    @State private var ButtonOffSet : CGFloat = 0
    
    @State private var isAnimation: Bool = false
    
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
                .opacity(isAnimation ? 1:0)
                .offset(y: isAnimation ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimation)
            
            // MARK: - Center
            
            ZStack {
                ZStack {
                    Circle()
                        .stroke(.white.opacity(0.3), lineWidth: 40)
                        .frame(width: 260, height: 260, alignment: .center)
                        .blur(radius: isAnimation ? 1 :10)
                        .opacity(isAnimation ? 1 : 0)
                        .scaleEffect(isAnimation ? 1 : 0.5)
                         .animation(.easeOut(duration: 1), value: isAnimation)
                        .onAppear(perform: {
                        isAnimation = true
                        })
                    Circle()
                        .stroke(.white.opacity(0.3), lineWidth: 80)
                        .frame(width: 260, height: 260, alignment: .center)
                        .blur(radius: isAnimation ? 1 :10)
                        .opacity(isAnimation ? 1 : 0)
                        .scaleEffect(isAnimation ? 1 : 0.5)
                         .animation(.easeOut(duration: 1), value: isAnimation)
                        .onAppear(perform: {
                        isAnimation = true
                        })
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimation ? 1:0)
                        .animation(.easeOut(duration: 1), value: isAnimation)
                }
//                .blur(radius: isAnimation ? 1 :10)
//                .opacity(isAnimation ? 1 : 0)
//                .scaleEffect(isAnimation ? 1 : 0.5)
//                .animation(.easeOut(duration: 1), value: isAnimation)
//                .onAppear(perform: {
//                    isAnimation = true
//                })
                
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
                        .fill(Color("ColorRed"))
                        .frame(width: ButtonOffSet + 80)
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
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .offset(x: ButtonOffSet)
                    .gesture(
                    DragGesture()
                    .onChanged({ gesture in
                        if gesture.translation.width > 0 && ButtonOffSet <= ButtonWidth - 80 {
                            ButtonOffSet = gesture.translation.width
                        }
                            
                        }
                        ).onEnded({_ in
                            withAnimation(Animation.easeOut(duration: 0.7)) {
                              
                                if ButtonOffSet > ButtonWidth/2 {
                                    ButtonOffSet = ButtonWidth - 80
                                    isOnboardingScreenActive = false }
                                else {
                                    ButtonOffSet = 0
                                }
                            }
                                 
                        })
                    ) // Gesture
                    
                    Spacer()
                } // Hstack
                
            } // Footer
            .frame(height: 90, alignment: .center)
            .padding()
            .opacity(isAnimation ? 1:0)
            .offset(y: isAnimation ? 0:40)
            .animation(.easeOut(duration: 1), value: isAnimation)
        }  // Vstack
   
            } //: ZSTACK
            .onAppear(perform: {
                isAnimation = true
            })
            
            
        }
}
    
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
