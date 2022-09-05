//
//  ContentView.swift
//  Pexeso
//
//  Created by Petr Skupeň on 30.08.2022.
//

import SwiftUI

struct PexesoView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.cyan)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: 3)
                Text("🚀")
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
            .preferredColorScheme(.light)
        PexesoView()
            .preferredColorScheme(.dark)
    }
}
