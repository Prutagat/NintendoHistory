//
//  InfoView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Приставки")
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView()
}
