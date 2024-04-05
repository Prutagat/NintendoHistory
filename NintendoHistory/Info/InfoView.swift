//
//  InfoView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct InfoView: View {
    
    @EnvironmentObject var appSetup: AppSetup
    
    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle(appSetup.titleOn ? "Приставки" : "")
            .listStyle(.plain)
            .padding(.top, CGFloat(appSetup.rowHeight))
        }
    }
}

#Preview {
    InfoView()
        .environmentObject(AppSetup())
}
