//
//  NewsCellPrototype.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import SwiftUI

struct NewsCellPrototype: View {
    var currentNewsItem: ResultNews
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                AsyncImage(url: URL(string: currentNewsItem.images.first?.image ?? "")){im in
                    if let image = im.image{
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: 50)
                            .clipShape(.circle)
                    }
                }
                Text(currentNewsItem.title)
                    .font(.system(.title3))
                    .lineLimit(4)
            }
            .padding(.top, 0)
            .frame(maxWidth: .infinity)
            
            Text(currentNewsItem.resDate)
                .font(.system(.subheadline))
                .foregroundStyle(.secondary)
            
        }
    }
}

#Preview {
    AllNewsView()
}
