//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by ro on 10/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        //New Stuff here
        .padding()
        
    }
}

#Preview {
    ContentView()
}
         
