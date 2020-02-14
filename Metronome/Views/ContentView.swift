//
//  ContentView.swift
//  Metronome
//
//  Created by Nick Iden on 2020-01-02.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
// Comments:
//          this program is a simple metronome application. The user can use a slider wheel to select

import SwiftUI
import Combine

struct ContentView: View {
    
    
    var body: some View {
        
        
        
       
        
        VStack {
            
            // stack multiple views
           
            CircleSelect()
            Spacer()
            StartButton()
            Spacer()
            
            
            
            
        }.edgesIgnoringSafeArea(.all)
        
    
  }
    
    
    
    
    
}



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
