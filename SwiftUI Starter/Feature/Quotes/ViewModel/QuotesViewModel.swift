//
//  QuotesViewModel.swift
//  SwiftUI Starter
//
//  Created by Yeseo Kim on 2021-10-07.
//

import Foundation

protocol QuotesViewModel: ObservableObject { // Any class that implements this protocol
    func getRandomQuotes() async             // will automatically get that capability
}

@MainActor // Signify that I want to perform the updates
           // on the main thread
final class QuotesViewModelImpl: QuotesViewModel {
    
    @Published private(set) var quotes: [Quote] = [] // Can access but change from outside
    
    private let service: QuotesService // To avoid being tied to one class
                                       // and altered from outside
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
