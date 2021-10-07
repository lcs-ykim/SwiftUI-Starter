//
//  Quote.swift
//  SwiftUI Starter
//
//  Created by Yeseo Kim on 2021-10-07.
//

import Foundation

struct Quote: Decodable { // Decodable by JSON
    // The let constants ensure that the data we receive
    // corresponds to that on the server
    let anime: String
    let character: String
    let quote: String
}
