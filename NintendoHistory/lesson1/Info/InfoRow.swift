//
//  InfoRow.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct InfoRow: View {
    
    @EnvironmentObject var appSetup: AppSetup
    
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 16)
                .padding(.top, CGFloat(appSetup.rowHeight))
            
            Text(post.title)
                .padding(.top, CGFloat(appSetup.rowHeight))
            
            Spacer()
        }
    }
}

#Preview {
    InfoRow(post: Post.data[0])
}
