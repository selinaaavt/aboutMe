//
//  ContentView.swift
//  aboutMe
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var stuff = "I love to eat spicy food.\nI love matcha.\nI love Drake. :)"
    @State private var sayings = ""
    var body: some View {
        VStack {
            Image("me")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            Text("(me)")
                .font(.headline)
            Text("Selina Wang!")
            .font(.largeTitle)
            Text(sayings)
            .font(.title2)
            
            Button("Click to get to know me better") {
                sayings = stuff
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
