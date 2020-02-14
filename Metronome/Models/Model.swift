//
//  Model.swift
//  Metronome
//
//  Created by Nick Iden on 2020-02-13.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI
import Combine // for processing values for over time

class Metronome: ObservableObject {
    
    // create variables for metronome
    var timer: Timer?
    let objectWillChange = PassthroughSubject<Void,Never>()
    private let interval: Int = 16
    private var current: Int = 0
    
    //Function    :   GetTempo
    //Discription :
    //              This method gets tempo information for metro
    //Return    :   The configured number divided by 60 (get bpm)
    
    private var GetTempo: TimeInterval {
        return 1 / ((Double(beatsPerMinute) / 60 ) * Double(interval))
        
    }
    
    
    //Function  :   configTimer
    //Discription   :
    //                  setting up the tempo
    //
    
    func configTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: GetTempo, repeats: true) { timer in
            self.getTick()
        }
    }
    
    
    // Getting current beat and dividing it by total clicks per
    // Beat
    
    var quarterBeat: (current: Int, total: Int) {
        (current / 4, 4)
    }
    
    var eigthBeat: (current: Int, total: Int) {
         (current / 2, 8)
    }
    
    var sixteenthBeat: (current: Int, total: Int) {
         (current, 8)
    }
    
    
    // Function : getTick ()
    // Discription  :
    //
    func getTick() {
        current += 1
        if current >= interval {
            current = 0
        }
        objectWillChange.send()
    }
    
    var beatsPerMinute: Int {
        Int(sliderPercent * 208)
    }
    
    
    
    var sliderPercent: Double = 0 {
        didSet {
            configTimer()
            objectWillChange.send()
        }
    
    }
}
