import Foundation
class ConversationDataSource {
    /// The number of Messages in the conversation
    
    /*JdJ: computed property count message array
    //JdJ: instead of let -> var
    //let messageCount = 1
    var messageCount = 1
    */
    var messageCount: Int {
        return messages.count
    }
    
    /*JdJ: array and openingLine, see Model Message for let  openingLine
    //JdJ: added array
    //var messages = [Message]()
     */
    var messages = [openingLine]
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")

        /*JdJ: after use array messages automatic count: messageCount
        //JdJ: added line
        messageCount += 1
         */
        
        //JdJ: added question to messages array
        let message = Message(date: Date(),
            text: question , type: .question)
        messages.append(message)
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        
        /*JdJ: after use array messages automatic count: messageCount
        //JdJ: added line
        messageCount += 1
         */
        
        //JdJ: added answer to messages array
        let message = Message(date: Date(),
            text: answer , type: .answer)
        messages.append(message)
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")

        //return Message(date: Date(), text: "Hello, world!", type: .answer)

        /* JdJ: after add question and answer to array is deze eerdere code uitgezet, nieuwe return creation
        //JdJ: added return options, even getal = question, oneven getal = answer
        if index % 2 == 0 {
            return Message(date: Date(), text: "Question \(index) / 2)", type: .question)
         } else {
            return Message(date: Date(), text: "Answer \(index) / 2)", type: .answer)
        }
         */
        return messages[index]
    }
}
