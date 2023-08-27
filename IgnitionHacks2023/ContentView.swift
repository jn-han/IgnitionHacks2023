//
//  ContentView.swift
//  IgnitionHacks2023
//
//  Created by Joshua Nguyen on 2023-08-25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Camera Interface")
                .font(.largeTitle)
            CameraView()
                .frame(width: 300, height: 300)
                .border(Color.gray, width: 1)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
}
