//
//  ContentView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("Сonsoles", systemImage: "gamecontroller.fill")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "person.circle.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "list.bullet.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
