//
//  StartButton.swift
//  Metronome
//
//  Created by Nick Iden on 2020-01-07.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
// Comment:
//          This is the start/stop button for turning
//          off the metronome app.

import SwiftUI

struct StartButton: View {
    
    var StartOn: Bool = true
    @State private var buttonString = "Start Click"
   
    
    var body: some View {
        // create button to start and stop metronome
        VStack {
            Button(action: {
                
                // if Start switch to stop
                if (self.buttonString == "Start Click"){
                   
                    // change string text
                    self.buttonString = "Stop Click"
                    
                } else {
                    
                    self.buttonString = "Start Click"
                
                }
                
            }) {
                Text(buttonString)
                    .font(.title)
                    .frame(maxWidth: 300)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
                
            }
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
