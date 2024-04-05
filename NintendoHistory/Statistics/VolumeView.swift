//
//  VolumeView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 05.04.2024.
//

import SwiftUI
import Charts

struct VolumeView: View {
    
    var body: some View {
        Text("Объем от всех продаж (мл. копий)")
            .font(.title.bold())
        Chart(Post.data) { post in
            SectorMark(
                angle: .value(
                    Text(verbatim: post.title),
                    post.sales
                ),
                innerRadius: .ratio(0.3),
                outerRadius: .inset(0.3)
            )
            .foregroundStyle(
                by: .value(
                    Text(verbatim: post.title),
                    post.title
                )
            )
            .annotation(position: .overlay) {
                Text("\(post.sales)")
            }
        }
        .frame(height: 260)
    }
}

#Preview {
    VolumeView()
}

