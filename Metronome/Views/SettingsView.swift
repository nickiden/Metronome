//
//  SettingsView.swift
//  Metronome
//
//  Created by Nick Iden on 2020-01-08.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    // create state for toggle screen flash
    @State private var enableFlash = false
    
    // state for heptic feedback
    @State private var enableHeptic = false
    
    // create a list of sound samples
    var clickSounds = ["Click","Woodblock","Drum Stick","Cowbell","Shaker","Guitar","4/4"]
    
    // state for sound list
    @State private var selectedSound = 0
    
    var body: some View {
        
        
        Form {
            Section(header: Text("Settings").font(.title)) {
                
                // toggle for screen flash
                Toggle(isOn: $enableFlash){
                    Text("Flash Screen")
                }
                // toggle heptic
                Toggle(isOn: $enableHeptic){
                    Text("Heptic")
                }
                
                // picker for sound
                
                Picker(selection: $selectedSound, label: Text("Click Sound")) {
                    ForEach(0..<clickSounds.count) {
                        Text(self.clickSounds[$0])
                }
            }
        }
            
        Section(header: Text("About Us")) {
                
            HStack {
                        Text("Company")
                        Spacer()
                        Text("Groovebone")
            }
            HStack {
                        Text("Programmer")
                        Spacer()
                        Text("Nick Iden")
                }
            
            }
            
            Section {
                // button to offer ad free app. The action will connect to app store
                Button(action: {}) {Text("Remove Ads")}
            }
        
      }
   }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
