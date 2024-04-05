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
                    Label("Консоли", systemImage: "gamecontroller.fill")
                }
            
            StatisticsView()
                .tabItem {
                    Label("Статистика", systemImage: "chart.bar.xaxis")
                }
            
            SettingsView()
                .tabItem {
                    Label("Настройки", systemImage: "list.bullet.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppSetup())
}
