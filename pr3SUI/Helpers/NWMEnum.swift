//
//  NWMEnum.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import Foundation


enum NWMEnum{
    case allNews
    
    var url:URL?{
        switch self{
        case .allNews:
            var comp = URLComponents()
            comp.scheme = "https"
            comp.host = "kudago.com"
            comp.path = "/public-api/v1.4/news"
            comp.queryItems = [
                URLQueryItem(name: "fields", value: "id,publication_date,title,place,description,body_text,images"),
                URLQueryItem(name: "text_format", value: "text")
            ]
            return comp.url
        }
    }
}
