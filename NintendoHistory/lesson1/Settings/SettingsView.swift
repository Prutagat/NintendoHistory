//
//  SettingsView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct SettingsView: View {
    
    // Toggle
    @State private var show = true
    
    // Picker
    @State private var selected = "one"
    
    // Slider
    @State private var brightness: Double = 0
    
    var body: some View {
        Form  {
            Section {
                Toggle("Change me", isOn: $show)
            }
            
            Section {
                Picker("Change me", selection: $selected) {
                    ForEach(["one", "two", "three"], id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.wheel)
            }
            
            Section {
                Slider(value: $brightness, in: -100...100, step: 1)
            }
        }
    }
}

#Preview {
    SettingsView()
//        .environment(ColorTheme())
}
