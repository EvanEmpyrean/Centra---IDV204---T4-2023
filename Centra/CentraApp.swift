//
//  CentraApp.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/24.
//

// ENTRY POINT OF APP

import SwiftUI

@main
struct CentraApp: App {
    
    // FOR SHOWING ONBOARDING SCREEN ONCE
    @AppStorage("showOnboardingScreen") var showOnboardingScreen: Bool = false

    
    var body: some Scene {
        WindowGroup {
            
            // If True
            if(showOnboardingScreen){
                SplashScreen()
            // If False
            } else {
                OnBoarding()
            }
        }
    }
}
