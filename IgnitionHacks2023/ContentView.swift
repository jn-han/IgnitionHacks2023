//
//  ContentView.swift
//  IgnitionHacks2023
//
//  Created by Joshua Nguyen on 2023-08-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        //Mark - Body
        //hello
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is a test")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
