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

struct ContentView: View {
    
    var body: some View {
        
        TabView {
        
        VStack {
            
            // stack multiple views
            Spacer()
            CircleSelect()
           
            Spacer()
            StartButton()
            Spacer()
            
            
        }.edgesIgnoringSafeArea(.all)
        
            
            ContentView()
                .tabItem {
                    Image(systemName: "metronome")
                    Text("Metronome")
            }
        
            
            
           SettingsView()
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        
            
        
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
