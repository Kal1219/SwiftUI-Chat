//
//  ContentView.swift
//  SwiftUI Chat
//
//  Created by Kaleb on 18/05/23.
//

import SwiftUI

struct ChatMessage: Hashable
{
    var message: String
    var avatar: String
}

var messages = [ChatMessage(message: "Simona", avatar: "A"),
                ChatMessage(message: "La mona", avatar: "B")]


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
