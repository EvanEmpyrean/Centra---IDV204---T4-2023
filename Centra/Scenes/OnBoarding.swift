//
//  OnBoarding.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/31.
//

import SwiftUI

struct OnBoarding: View {
    
    @AppStorage("showOnboardingScreen") var showOnboardingScreen: Bool = false

    init() {
        UIPageControl
            .appearance()
            .currentPageIndicatorTintColor = .currentPageIndicator.withAlphaComponent(0.70)
        }
    
    var body: some View {
        
        ZStack{
            
            Color.background
            .ignoresSafeArea()
            
            VStack{
            
                TabView(){
                    OnBoardingPages(featureOverview: FeatureDetails[0])
                        .tabItem{
                        }
                    OnBoardingPages(featureOverview: FeatureDetails[1])
                        .tabItem{
                        }
                    OnBoardingPages(featureOverview: FeatureDetails[2])
                        .tabItem{
                        }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                
// BUTTON
                
                    Button(action: {
                        showOnboardingScreen.toggle() // Marks Onboarding as complete
                    }){
                        Text("Skip")
                            .frame(width: 250)
                            .padding(.vertical, 20.0)
                            .cornerRadius(40)
                            .foregroundColor(.accent)
                            .bold()
                    }
                    
                    .background(.secondaryButtons)
                    .cornerRadius(30)
                    .padding(.bottom, 20)

                
// 􀋉 ------------ LINK VERSION NUMBER
                Text("Centra 2023© All Rights Reserved. Version 0.1")
                    .font(.caption)
                    .foregroundColor(.legalText)
                    .padding(.bottom, 22)
                    .frame(width: 220)
                    .multilineTextAlignment(.center)

            } // END OF V-STACK
            
        } // END OF Z-STACK
        
        
// =====================================================================
        
    } // END OF BODY
}

#Preview {
    OnBoarding()
}
