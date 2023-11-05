//
//  Module Components.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/30.
//

import SwiftUI

struct Module_Components: View {
    
    // Variable to call data in
    var module: Module // parameter
    
    var body: some View {
        
                HStack {
                    
// 􀋉 CHANGE TO COVER IMAGE FOR MODULE
                    Image(module.cover)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .padding(.trailing, 3) //setting space between the image and text
                    Text(module.title)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    // MORE BUTTON
                            ZStack {
                                Circle()
                                    .fill(.black.opacity(0.1)) // Change the color if needed
                                    .frame(width: 28, height: 28)

// 􀋉 ALIGN IMAGE MIDDLE AND CENTRE
// 􀋉 MAKE MORE BUTTON WORK AND ADD CONTEXTUAL MENU
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 17, weight: .bold))
                            }
                            .padding(.leading, 10) // giving a bit of space between the button and text
                    
                } // END OF H-STACK
        
                .frame(height: 100)
                .padding(EdgeInsets(top: 7, leading: 7, bottom: 7, trailing: 11))
                .background(.gray)
                .cornerRadius(18)
        
    }
    

    // END OF BODY
} // END OF SCREEN VIEW

#Preview {
    Module_Components(module: dummyModule)
}
