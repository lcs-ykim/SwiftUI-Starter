//
//  QuoteScreen.swift
//  SwiftUI Starter
//
//  Created by Yeseo Kim on 2021-10-07.
//

import SwiftUI

struct QuoteScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl(
    service: QuotesServiceImpl()
    ) // A @StateObject stays "alive" throught the live time of a view
      // Prevents me from losing any data
    
    var body: some View {

        Group {
            
            if vm.quotes.isEmpty {
                LoadingView(text: "Fetching Quotes")
            } else {
                
                List {
                    ForEach(vm.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }

            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
    
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuoteScreen()
    }
}
