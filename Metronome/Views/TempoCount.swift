//
//  TempoCount.swift
//  Metronome
//
//  Created by Nick Iden on 2020-01-02.
//  Copyright © 2020 Nick Iden. All rights reserved.
//  Comment:
//          This serves as the picker that switches different
//          timings for the metronome.

import SwiftUI

struct TempoCount: View {
    // create a list of time signatures
    var timeSign = ["1/1","1/2","2/2","1/4","2/4","3/4","4/4","5/4","6/8","7/8"]
    
    // state for time signatures
    @State private var selectedTime = 0
    
    var body: some View {
       
        
            // create picker of times
        Section {
            Picker(selection: $selectedTime, label: Text("Sign")
                ) {
                    ForEach(0 ..< timeSign.count) {
                        Text(self.timeSign[$0]).tag($0)
                    }
            }.padding()
        }
 }
}

struct TempoCount_Previews: PreviewProvider {
    static var previews: some View {
        TempoCount()
    }
}
