import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var lastMessageNumber = -1
    // @State private var buttonState = true
    
    var body: some View {
        
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image (imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
                        
            Spacer()
            
            HStack {
                Button("Show Message") {
                    
                    let messages = ["You are Awesome!", "When the Genius Bar needs help, they call you!",
                                    "You are great!",
                                    "You are fantastic!",
                                    "Fabulous? is that you?", "You make me Smile!" ]
//                    message = messages[Int.random(in: 0...messages.count-1)]
                    //generate a random MessageNumber to use as an index
                    //if messageNumber == lastMessageNumber {
                    // keep generating a random messageNumber
                    //until you get a messageNumber != last MessageNumber
                    //set messageString to messages [messageNumber]
                    // update the lastMessageNumber with messageNumber
                    var messageNumber: Int
                    
                    repeat {
                        messageNumber = Int.random(in: 0...messages.count-1)
                                            }
                    while messageNumber == lastMessageNumber
                    message = messages [messageNumber]
                    lastMessageNumber = messageNumber
                    

                            var imageNumber: Int
                            
                    repeat {
                        imageNumber = Int.random(in: 0...9)
                    }
                    while imageNumber == lastImageNumber
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

