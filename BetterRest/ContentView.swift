//
//  ContentView.swift
//  BetterRest
//
//  Created by Garret Poole on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        //actual order formats based on location
        //Text(Date.now, format: .dateTime.day().month().year().hour().minute())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDate(){
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
