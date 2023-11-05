//
//  PrimaryNavTabBar.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/30.
//

import SwiftUI

struct PrimaryNavTabBar: View {
    var body: some View {
        TabView{

            // Modules (Home)
            Modules()
                .tabItem{
                    Label("Menu", systemImage: "house")
                }
            
            // Tasks
            Text("Tasks Coming Soon...")
                .tabItem {
                    Label("Tasks", systemImage: "list.clipboard")
                }
            
            // Announcements
                Text("Announcements Coming Soon...")
                .tabItem {
                    Label("Announcements", systemImage: "megaphone")
                }
            
            // Calendar
            Text("Calendar Coming Soon...")
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            
            // Settings
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            
        }.accentColor(.accent)
    }
}








//struct PrimaryNavTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        PrimaryNavTabBar()
////            .environmentObject(Modules())
//    }
//}

#Preview {
    PrimaryNavTabBar()
}
