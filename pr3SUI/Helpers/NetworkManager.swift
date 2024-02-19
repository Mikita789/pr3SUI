//
//  NetworkManager.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import Foundation


struct NetworkManager{
    static let shared = NetworkManager()
    private init(){}
    
    func fetchNews() async throws -> AllNewsNWModel{
        guard let url = NWMEnum.allNews.url else {
            print(NWMErr.badURL.rawValue)
            throw NWMErr.badURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let res = try self.parseJS(data: data, to: AllNewsNWModel.self)
        return res
    }
    
    private func parseJS<T:Codable>(data: Data, to type: T.Type) throws -> T{
        let decoder = JSONDecoder()
        guard let res = try? decoder.decode(T.self, from: data) else {
            print(NWMErr.parseError.rawValue)
            throw NWMErr.parseError
        }
        return res
    }
    
}
