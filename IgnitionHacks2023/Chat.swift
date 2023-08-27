//
//  Chat.swift
//  IgnitionHacks2023
//
//  Created by Kennedy Yung on 2023-08-27.
//

import SwiftUI
import Combine


final class ViewModel: ObservableObject {

}

struct Chat: View {
    @State var chatMessages: [ChatMessage] = ChatMessage.sampleMessages
    @State var messageText: String = ""
    let openAIService = OpenAIService()
    @State var cancellables = Set<AnyCancellable>()

    
    var body: some View {
        VStack{
            ScrollView {
                LazyVStack {
                    ForEach(chatMessages, id: \.id) { message in
                        messageView(message: message)
                    }
                }
            }
            HStack {
                TextField("Enter a message", text: $messageText )
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(12)
                Button {
                    sendMessage()
                } label: {
                    Text("Send")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("lightBlue"))
                        .cornerRadius(12)
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
                .background(message.sender == .me ? Color("lightBlue") : .gray.opacity(0.1))
                .cornerRadius(16)
            if message.sender == .gpt {Spacer()}
        }
    }
    
    func sendMessage() {
        let myMessage = ChatMessage(id: UUID().uuidString, content: messageText, dateCreated: Date(), sender: .me)
        chatMessages.append(myMessage)
        openAIService.sendMessage(message: messageText).sink{ completion in
            
        } receiveValue: { response in
            guard let textResponse = response.choices.first?.text.trimmingCharacters(in: .whitespacesAndNewlines.union(.init(charactersIn: "\""))) else { return }
            let gptMessage = ChatMessage (id: response.id, content: textResponse, dateCreated: Date(), sender: .gpt)
            chatMessages.append(gptMessage)
        }
        .store(in: &cancellables)
        messageText = ""

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
                    content: "Assume that f(x) is a real-valued function defined for all real numbers x on an open interval whose center is a certain real number a. What does it mean to say that f(x) has a derivative f0 (a) at x = a, and what is the value of f0 (a)? (Give the definition of f0 (a).)",
                    dateCreated: Date(),
                    sender: .me),
        ChatMessage(id: UUID().uuidString,
                    content: "To say that a real-valued function f(x) has a derivative f'(a) at x=a means that the function has a rate of change at the specific point, x=a. In other words, as x approaches a, the function f(a)f(x) becomes increasingly similar to lin...",
                    dateCreated: Date(),
                    sender: .gpt),
        ]
}
