//
//  ContentView.swift
//  Pexeso First Assignment
//
//  Created by Petr Skupeň on 08.09.2022.
//

import SwiftUI

struct AssignmentView: View {
    var body: some View {
        VStack {
            Text("Memorize")
                .font(.largeTitle)
            CardView()
            
        }
        .padding(.all)
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 2)
            Text("🏎")
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
