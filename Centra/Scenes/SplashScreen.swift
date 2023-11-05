//
//  SplashScreen.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/29.
//

import SwiftUI

struct SplashScreen: View {

    // For SplashScreen Animation
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.2

    var body: some View {
        if isActive {
            PrimaryNavTabBar()
        } else {
            
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.502, green: 0.267, blue: 1.0), Color(red: 0.192, green: 0.055, blue: 0.49)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack {
                
                Spacer() // adds space between top of screen and logo
                
                Image("Centra Logo Transparent")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.5)
                
                Spacer() // adds space between logo and text
                
                Text("Version 0.1 (BETA)")
                    .font(.footnote)
                    .foregroundColor(Color.white)
                    .bold()
                    .textCase(.uppercase)
                    .blendMode(.overlay)
                    .padding(.bottom, 40) // Gives room for Home Indicator
            }
            // Animation
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeInOut(duration: 0.7)){
                    self.size = 1
                    self.opacity = 1.0
                } /// Animation
            } // On Appear
        } // End of Z-Stack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                withAnimation{
                    self.isActive = true
                }
            } /// Animation
        } // On Appear
        } // END OF ELSE STATEMENT
    }
}

#Preview {
    SplashScreen()
}
