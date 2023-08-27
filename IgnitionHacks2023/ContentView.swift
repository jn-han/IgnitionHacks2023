//
//  ContentView.swift
//  IgnitionHacks2023
//
//  Created by Joshua Nguyen on 2023-08-25.
//

import SwiftUI
import UIKit

struct ContentView: View {

    var body: some View {
            CameraView()
                .frame(width: 2000, height: 700)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
}
