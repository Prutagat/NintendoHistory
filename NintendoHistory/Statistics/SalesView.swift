//
//  SalesView.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 05.04.2024.
//

import SwiftUI
import Charts

struct SalesView: View {
    
    var body: some View {
        Text("Продажи (мл. копий)")
            .font(.title.bold())
        Chart(Post.data) { post in
            BarMark(
                x: .value("Консоль", post.title),
                y: .value("Продажи (мл. копий)", post.sales)
            )
            .opacity(0.3)
            .foregroundStyle(post.barColor)
            .clipShape(RoundedRectangle(cornerRadius: 5))
        }
        .frame(height: 200)
    }
}

#Preview {
    SalesView()
}
