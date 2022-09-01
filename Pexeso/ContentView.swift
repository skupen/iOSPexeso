//
//  ContentView.swift
//  Pexeso
//
//  Created by Petr Skupeň on 30.08.2022.
//

import SwiftUI

struct PexesoView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
                .bold()
                .italic()
        }
        .padding()
        .foregroundColor(.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PexesoView()
    }
}
