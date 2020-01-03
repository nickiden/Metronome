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
    
    // create a state to indicate tempo
    @State private var tempo: CGFloat = 0.0
    
    var body: some View {
        
       
        
        VStack (spacing: 20){
            
            HStack{
                Text("0 bpm")
                Slider(value: $tempo)
                Text("220 bpm")
            }.padding()
            
            ZStack {
                // create circle for showing underlay
                Circle()
                    .stroke(Color.orange, lineWidth: 25)
                    .opacity(0.1)
                    
                // overlay circle to show tempo
                Circle()
                .trim(from: 0, to: tempo)
                .stroke(Color.red, lineWidth: 25)
                .rotationEffect(.degrees(-90))
                
                // overlay to show tempo
                .overlay(
                    Text("\(Int(tempo * 220.0))bpm")
                        .font(.largeTitle))
                    
            }
                // padding for the circle shapes
                .padding(50)
        }
           
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleSelect()
    }
}
