//
//  Module Details.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/11/05.
//

import SwiftUI

struct Module_Details: View {
    @State private var selectedOption = 0 // For Segmented Picker
    
    var module: Module // parameter
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .center){
                
                Image(module.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .padding(.trailing, 3) //setting space between the image and text
                Text(module.title)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Text(module.code)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                                
            } // END OF CARD V STACK
            .frame(
                height: 395
            )
            .background(.gray)
            .cornerRadius(18)
            
            // ANNOUNCEMENT
            VStack{
                HStack{
                    Text("NEW ANNOUNCEMENT")
                }
                HStack{
                    Image("X")
                    Text("Heading Sample")
                    Text("Body Sample")
                }
            } // END OF V-STACK
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .cornerRadius(18)
            
            Picker(selection: $selectedOption, label: Text("Hi")) {
                Text("About").tag(0)
                Text("Lecturers").tag(1)
                Text("Assignments").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            
        } // END OF SCROLL VIEW
        .ignoresSafeArea(.all)

        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        
        
    } // END OF VIEW

}

#Preview {
    Module_Details(module: dummyModule)
}
