//
//  DetailView.swift
//  LandMark
//
//  Created by Shuyu Zhou on 2024-01-27.
//

import SwiftUI

struct DetailView: View {
    
    //MARK: Stored properties
    let item: Landmark
    
    //MARK: Computed properties
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                RecommendationView(item: item)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: rom)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: sudburyNickel)
    }
}
