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
    var color: Color
}

var messages = [ChatMessage(message: "Simona", avatar: "A", color: .red),
                ChatMessage(message: "La mona", avatar: "B", color: .blue)]

struct ChatRow: View
{
    var chatMessage: ChatMessage
    
    var body: some View
    {
        HStack
        {
            Group
            {
                Text(chatMessage.avatar)
                Text(chatMessage.message)
                    .bold()
                    .padding(10)
                    .foregroundColor(Color(.white))
                    .background(chatMessage.color)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack
        {
            VStack
            {
                List{
                    ForEach(messages, id: \.self) { msg in
                        ChatRow(chatMessage: msg)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
