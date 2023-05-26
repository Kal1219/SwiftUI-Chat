//
//  ChatController.swift
//  SwiftUI Chat
//
//  Created by Kaleb on 18/05/23.
//

import Combine
import SwiftUI

class ChatController: ObservableObject
{
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var messages = [ChatMessage(message: "Simona", avatar: "A", color: .red),
                               ChatMessage(message: "La mona", avatar: "B", color: .blue)]
    
    func sendMessage(_ chatMessage: ChatMessage)
    {
        messages.append(chatMessage)
        didChange.send(())
    }
}
