//
//  AllNewsViewModel.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import Foundation

@MainActor
class AllNewsViewModel: ObservableObject{
    @Published var allNewsItem: [ResultNews] = []
    
    
    init(){
        Task{
            allNewsItem = try await NetworkManager.shared.fetchNews().results
        }
    }
}
