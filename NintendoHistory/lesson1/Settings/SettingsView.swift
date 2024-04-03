//
//  SettingsView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var appSetup: AppSetup
    
    // Picker
    //@State private var selected = "one"
    
    
    var body: some View {
        Form  {
            Section {
                Text("\(colorScheme == .light ? "Light" : "Dark") Theme enabled")
            }
            
            Section {
                Toggle("Title is visible", isOn: appSetup.$titleOn)
                    .onChange(of: appSetup.titleOn) {
                        appSetup.titleOn.toggle()
                    }
                
                if appSetup.titleOn {
                    Text("Navigation title enabled")
                }
            }
            
//            Section {
//                Picker("Change me", selection: $selected) {
//                    ForEach(["one", "two", "three"], id: \.self) {
//                        Text($0)
//                    }
//                }
//                .pickerStyle(.palette)
//            }
            
            Section {
                Text("Change row height. Now: \(Int(appSetup.rowHeight))")
                Slider(value: appSetup.$rowHeight, in: 0...100, step: 1)
                InfoRow(post: Post.data[0])
            }
        }
    }
}

#Preview {
    SettingsView()
}
