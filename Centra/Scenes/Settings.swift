//
//  Settings.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/11/05.
//

import SwiftUI

struct Settings: View {
    @State private var selectedOption = 0
    
    var body: some View {

            

            VStack{
                
                List{
                    Text("Profile")
                    Text("Account")
                    Text("App Settings")
                    Text("About the App")
                    Text("Help")
                }
                

                VStack {
                    Link("Open GitHub Repository", destination: URL(string: "https://github.com/EvanEmpyrean/Centra---IDV204---T4-2023")!)
                        .padding()
                }
                    
                        Picker(selection: $selectedOption, label: Text("Hi")) {
                            Text("Dark").tag(0)
                            Text("System").tag(1)
                            Text("Light").tag(2)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                
// 􀋉 ---- To ADD ---- STYLE THE PICKER
//                        .frame(height: 42)
//                        .font(.system(size: 25))
                
                

                Text("The app will match the appearance settings you’ve set in your iPhone’s settings")
                .font(.footnote)
                Text("© Centra 2023. All Rights Reserved Version 0.1")
                .font(.footnote)
                
                

            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .foregroundColor(.titleText)


        }

}

#Preview {
    Settings()
}
