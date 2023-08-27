//
//  ContentView.swift
//  IgnitionHacks2023
//
//  Created by Joshua Nguyen on 2023-08-25.
//

import SwiftUI
import OpenAISwift

final class ViewModel: ObservableObject {

}

struct ContentView: View {
    @State var chatMessages: [ChatMessage] = ChatMessage.sampleMessages
    var body: some View {
        VStack{
            ScrollView {
                LazyVStack {
                    ForEach(chatMessages, id: \.id) { message in
                        messageView(message: message)
                    }
                }
            }
        }
        .padding()
    }
    
    func messageView(message: ChatMessage) -> some View {
        HStack{
            if message.sender == .me {Spacer()}
            Text(message.content)
                .foregroundColor(message.sender == .me ? .white : .black)
                .padding()
                .background(message.sender == .me ? .blue : .gray.opacity(0.1))
            if message.sender == .gpt {Spacer()}
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ChatMessage {
    let id: String
    let content: String
    let dateCreated: Date
    let sender: MessageSender
}

enum MessageSender {
    case me
    case gpt
}

extension ChatMessage {
    static let sampleMessages = [
        ChatMessage(id: UUID().uuidString,
                    content: "Sample Message from me",
                    dateCreated: Date(),
                    sender: .me),
        ChatMessage(id: UUID().uuidString,
                    content: "Sample Message from me",
                    dateCreated: Date(),
                    sender: .gpt),
        ChatMessage(id: UUID().uuidString,
                    content: "Sample Message from me",
                    dateCreated: Date(),
                    sender: .me),
        ChatMessage(id: UUID().uuidString,
                    content: "Sample Message from me",
                    dateCreated: Date(),
                    sender: .gpt),
        ]
}
