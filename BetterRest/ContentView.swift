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
        //select future dates only
        DatePicker("Please Enter a Date", selection: $wakeUp, in: Date.now...)
            //hide label and center the picker
            //.labelsHidden()
    }
    
    func exampleDate(){
        //creates a range of dates from now to exactly a day from now
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
