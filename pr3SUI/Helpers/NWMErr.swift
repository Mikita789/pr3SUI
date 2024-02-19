//
//  NWMErr.swift
//  pr3SUI
//
//  Created by Никита Попов on 16.02.24.
//

import Foundation


enum NWMErr:String, Error{
    case badURL = "DEBUG: - You have a bad URL addr"
    case parseError = "DEBUG: - Parse Error"
    case noData = "DEBUG: - No Data"
}
