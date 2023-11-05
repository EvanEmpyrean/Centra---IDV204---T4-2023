//
//  OnBoardingPages.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/31.
//

import SwiftUI

struct OnBoardingPages: View {
    var featureOverview: FeatureOverview // parameter
    var body: some View {
        
        VStack {
            
            
            Spacer()
            
            // =============== PAGE =====================
            VStack {
                Image(systemName: featureOverview.featureSymbol)
                    .font(.system(size: 56))
                    .fontWeight(.light)
                    .imageScale(.large)
                    .foregroundStyle(.accent)
                    .padding(.bottom, 14)
                
                Text(featureOverview.featureTitle)
                    .bold()
                    .font(.title)
                    .padding(.bottom, 5)
                    .foregroundStyle(.titleText)
                
                Text(featureOverview.briefExplanation)
                    .foregroundStyle(.bodyText)
                
            } // END OF V-STACK
            .frame(width: 270)
            .multilineTextAlignment(.center)
            
            
            
            // =============== BUTTON + LEGAL TEXT : EVERY PAGE =====================
            
            Spacer()
            
        }
    }
}
    
#Preview {
    OnBoardingPages(featureOverview: dummyFeatureOverview)
}
