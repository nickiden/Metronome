//
//  CircleSelect.swift
//  Metronome
//
//  Created by Nick Iden on 2020-01-02.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
//  Comments:
//              This is the view for the circle object used
//              to select the tempo for the metronme. Inside will be tempo markers and a giant bpm count.

import SwiftUI

struct CircleSelect: View {
    var body: some View {
        
        
        VStack {
            // create circle for selecting tempo
            Circle()
                .stroke(Color.yellow, lineWidth: 25)
                .padding(50)
                
                
        }
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleSelect()
    }
}
