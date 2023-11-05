//
//  Modules.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/29.
//

import SwiftUI

struct Modules: View {

//    var module: Module // parameter

    @State var searchText = ""
    
// SEARCH FUNCTION
    var searchResult: [Module] {
        if(searchText.isEmpty) {
            return moduleData
        } else {
            return moduleData.filter{ $0.title.contains(searchText)}
        }
    }

    var body: some View {
        
// 􀋉 --- POSSIBLY ADD AUTO FILTER FOR TERMS BASED ON DATES DATA
// 􀋉 --- ADD FUNCTIONALITY TO SWITCH BETWEEN LIST AND GRID VIEW
        
        ZStack {
            
        NavigationView{ // For the heading
            
            ScrollView{
                LazyVStack(spacing: 12){
                    
                    // Navigation Link to Module Details Page

                    ForEach(searchResult){ Module in
                        NavigationLink(destination: Module_Details(module: Module)){
                            Module_Components(module: Module)
                        }
                        .foregroundColor(.white)
                        .searchable(text: $searchText)


                    } // END OF FOR EACH
                } // END OF LAZY V-STACK
                .padding(20)
            } // END OF SCROLL VIEW
            
            .navigationTitle("Modules")
            .navigationBarTitleDisplayMode(.large)
            .foregroundColor(.titleText)
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {
                    // Action for first button
                }) {
                    Image(systemName: "square.grid.2x2")
                        .foregroundColor(.accent)
                }
                Button(action: {
                    // Action for second button
                }) {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .foregroundColor(.accent)
                }})
        }
        } // End of Z-Stack
    } // END OF BODY
} // END OF VIEW

#Preview {
    Modules()
}

