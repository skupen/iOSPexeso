//
//  ContentView.swift
//  Pexeso
//
//  Created by Petr Skupeň on 30.08.2022.
//

import SwiftUI

struct PexesoView: View {
    
    let emojis = ["🚀", "🛸", "🛩", "🛥", "🚅", "🚢", "💺", "🚖", "🚁", "ad", "sf", "asd", "saffda", "asdasd"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.cyan)
            .padding()
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
    }
    
        var remove: some View {
            Button {
                if emojiCount > 1 {
                    emojiCount -= 1
                    }
            } label: {
                VStack {
                    Image(systemName: "minus.circle")
                }
            }
        }
        var add: some View {
            Button {
                if emojiCount < emojis.count {
                    emojiCount += 1
                    }
            } label: {
                VStack {
                    Image(systemName: "plus.circle")
                }
        }
    }
}
    

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
                    .bold()
                    .italic()
            } else {
                shape
                    .fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PexesoView()
            .preferredColorScheme(.dark)
        PexesoView()
            .preferredColorScheme(.light)
    }
}
