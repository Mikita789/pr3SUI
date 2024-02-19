//
//  AllNewsView.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import SwiftUI

struct AllNewsView: View {
    @ObservedObject private var model = AllNewsViewModel()
    
    var body: some View {
        List{
            ForEach(model.allNewsItem, id: \.id){item in
                NewsCellPrototype(currentNewsItem: item)
            }
        }
        .navigationTitle("News")
            
    }
    
}

#Preview {
    NavigationStack{
        AllNewsView()
    }
}
