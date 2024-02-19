//
//  AllNewsNWModel.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import Foundation


// MARK: - AllNewsNWModel
struct AllNewsNWModel: Codable {
    let count: Int
    let next: String
    let results: [ResultNews]
}

// MARK: - Result
struct ResultNews: Codable {
    let id, publicationDate: Int
    let title: String
    let place: Place?
    let description, bodyText: String
    let images: [Image]

    enum CodingKeys: String, CodingKey {
        case id
        case publicationDate = "publication_date"
        case title, place, description
        case bodyText = "body_text"
        case images
    }
    
    var resDate: String{
        let df = DateFormatter()
        df.dateFormat = "dd.MM.YYYY/HH:mm"
        let date = Date(timeIntervalSince1970: TimeInterval(self.publicationDate))
        
        return df.string(from: date)
    }
}

// MARK: - Image
struct Image: Codable {
    let image: String
    let source: Source
}

// MARK: - Source
struct Source: Codable {
    let name: String
    let link: String
}

// MARK: - Place
struct Place: Codable {
    let id: Int
}
