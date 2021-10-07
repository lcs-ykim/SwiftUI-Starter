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

extension Quote {
    // For testing usage
    static let dummyData: [Quote] = [
        Quote(anime: "Anime 1", character: "Character 1", quote: "Random Quote 1"),
        Quote(anime: "Anime 2", character: "Character 2", quote: "Random Quote 2"),
        Quote(anime: "Anime 3", character: "Character 3", quote: "Random Quote 3"),
        Quote(anime: "Anime 4", character: "Character 4", quote: "Random Quote 4"),
        Quote(anime: "Anime 5", character: "Character 5", quote: "Random Quote 5")
    ]
}
