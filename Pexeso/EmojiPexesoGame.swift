//
//  EmojiPexesoGame.swift
//  Pexeso
//
//  Created by Petr SkupeÅ on 30.09.2022.
//

import SwiftUI

class EmojiPexesoGame {
    static let emojis = ["ð", "ð¸", "ð©", "ð¥", "ð", "ð¢", "ðº", "ð", "ð", "ad", "sf", "asd", "saffda", "asdasd"]
    
    static func createPexesoGame() -> PexesoGame<String> {
        PexesoGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: PexesoGame<String> = createPexesoGame()
    
    
    var cards: Array<PexesoGame<String>.Card> {
        return model.cards
    }
}
