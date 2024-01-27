//
//  ListItemView.swift
//  LandMark
//
//  Created by Shuyu Zhou on 2024-01-27.
//

import SwiftUI

struct ListItemView: View {
    let item: Landmark
    
    var body: some View {
        
        HStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                    .scaledToFit()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15.0)
                    )
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                
                
                HStack {
                    RecommendationView(item: item)
                    
                    Spacer()
                }
            }
            
        }
        
    }
}

#Preview {
    ListItemView(item: rom)
        .padding()
}
