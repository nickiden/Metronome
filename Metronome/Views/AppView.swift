//
//  AppView.swift
//  Metronome
//
//  Created by Nick Iden on 2020-02-13.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        // create tap view for navigation
        TabView{
            
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

struct AppView_Previews: PreviewProvider {
    // add static for Settings menu
    static let setting = SettingsView()
    
    
    static var previews: some View {
        AppView()
    }
}
