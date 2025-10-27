//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by ro on 10/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a Programmer!"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Awesome!") {
                    message = "Awesome!"
                }
                
                Button("Great!") {
                    message = "Great!"
                }
                
            }
            //added one place to change the button styling
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        //New Stuff here
        .padding()
        
    }
}

#Preview {
    ContentView()
}

