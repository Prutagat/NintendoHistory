//
//  InfoDetails.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 01.04.2024.
//

import SwiftUI

struct InfoDetails: View {
    
    @EnvironmentObject var appSetup: AppSetup
    
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 16)
                .shadow(radius: 3)
            
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.red)
                
                Divider()
                
                Text(post.description)
            }
            .padding()
            .padding(.top, CGFloat(appSetup.rowHeight))
        }
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}

#Preview {
    InfoDetails(post: Post.data[0])
}
