//
//  StatisticsView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct StatisticsView: View {
    
    @EnvironmentObject var appSetup: AppSetup
    let views: [AnyView] = [AnyView(SalesView()), AnyView(VolumeView())]
    @State var currentViewInd = 0
    
    var body: some View {
        Form {
            Section {
            Text("Статистика")
                .font(.title.bold())
            }
            
            Section {
                Picker("Текст", selection: appSetup.$statistic) {
                    ForEach(["Продажи", "Объём"], id: \.self) {
                        Text($0)
                    }
                    .onChange(of: appSetup.statistic) {
                        withAnimation{
                            currentViewInd = currentViewInd == 1 ? 0 : 1
                        }
                    }
                }
                    .pickerStyle(.palette)
                
                ForEach(views.indices, id: \.self) { (ind: Int) in
                    Group{
                        if ind == self.currentViewInd{
                            self.views[ind]
//                                .transition(.scale)
                                .transition(.asymmetric(
                                    insertion: AnyTransition.scale(scale: 0.1, anchor: .leading).combined(with: .opacity),
                                    removal: .move(edge: .trailing)))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    StatisticsView()
        .environmentObject(AppSetup())
}
