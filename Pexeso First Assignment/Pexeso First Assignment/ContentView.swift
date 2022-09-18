//
//  ContentView.swift
//  Pexeso First Assignment
//
//  Created by Petr Skupeň on 08.09.2022.
//

import SwiftUI

struct AssignmentView: View {
    @State var emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑"]
    var body: some View {
        VStack {
            Text("Memorize")
                .font(.largeTitle)
            Spacer()
            LazyVGrid(columns: [GridItem(.adaptive(minimum:70))]) {
                ForEach(emojis, id: \.self) {
                    emoji in
                    CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
        .padding(.all)
    }
}

struct CardView: View {
    var content: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill()
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(lineWidth: 3)
                .foregroundColor(.cyan)
            Text(content)
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12")
        AssignmentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}
