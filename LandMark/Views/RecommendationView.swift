//
//  RecommendationView.swift
//  LandMark
//
//  Created by Shuyu Zhou on 2024-01-27.
//

import SwiftUI

struct RecommendationView: View {
    
    let item: Landmark
    
    var body: some View {
        Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
            .resizable()
            .scaledToFit()
            .frame(height: 20)
            .padding(5)
    }
}

#Preview {
    RecommendationView(item: rom)
}
