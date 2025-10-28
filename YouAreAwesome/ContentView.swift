import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var symbolName = ""
   // @State private var buttonState = true
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: symbolName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Press Me") {
                    //               buttonState.toggle() // Toggle the state
                    //    if buttonState {
                    let message1 = "You are Awesome!"
                    let message2 = "You are Great!"
                    
                    if message == message1 {
                        message = message2
                        symbolName = "sun.max.fill"
                    } else {
                        message = message1
                        symbolName = "lightbulb" // Change to the desired symbol
                    }
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
