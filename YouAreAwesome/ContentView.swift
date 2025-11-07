import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
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
                    message = messages[Int.random(in:0...messages.count-1)]
//                    message = messages[messageNumber]
//                    messageNumber += 1
//                    if messageNumber == messages.count{
//                        messageNumber = 0
//                    }
                    imageName = "image\(Int.random(in: 0...9))"
//                    imageName = "image\(imageNumber)"
//                    imageNumber += 1
//                    if imageNumber > 9 {
//                        imageNumber = 0
//                        
//                    }
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

