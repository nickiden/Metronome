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
    @State private var timer: CGFloat = 0.0
    @State private var start = false
    
    var body: some View {
        
       
        
        VStack {
            
            // zstack for outer ring (bpm)
            ZStack {
                // create circle for showing underlay
                Circle()
                    .stroke(Color.orange, lineWidth: 25)
                    .opacity(0.1)
                    
                // overlay circle to show tempo
                Circle()
                .trim(from: 0, to: tempo)
                .stroke(Color.yellow, lineWidth: 25)
                
                    .rotationEffect(.degrees(Constraints.CircleBuild.degreeValue))
            
                
                // overlay to show tempo
                .overlay(
                    Text("\(Int(tempo * 250.0)) bpm")
                        .font(.largeTitle))
                
                // inner circle for monitoring timer
                Circle()
                    .stroke(Color.blue, lineWidth: 9)
                    .opacity(0.1)
                    .frame(height: 283)
                   
                
                Circle()
                    .trim(from: 0, to: timer)
                    .stroke(Color.blue, lineWidth: 9)
                    .frame(height: 283)
                
                    .rotationEffect(.degrees(Constraints.CircleBuild.degreeValue))
                
                
                    
            }
                // padding for the circle shapes
                .padding(50)
                .frame(height: 450)
            
            HStack{
                
                Text("0 bpm")
                Slider(value: $tempo)
                .frame(maxHeight:30)
                Text("250 bpm")
            }.padding()
            
            // stepper to set timer
            //Stepper(value: $timer, in: 0...3, step: 0.05) {
            //    Text("\(timer, specifier: "%g") minutes")
           // }.padding()
                
            
            
            
        }
           
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleSelect()
    }
}
