//
//  NintendoHistoryApp.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

@main
struct NintendoHistoryApp: App {
    
    @StateObject var appSetup = AppSetup()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appSetup)
        }
    }
}
