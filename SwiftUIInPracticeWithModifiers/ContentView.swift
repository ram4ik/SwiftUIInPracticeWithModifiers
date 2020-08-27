//
//  ContentView.swift
//  SwiftUIInPracticeWithModifiers
//
//  Created by ramil on 27.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0
    
    private let range = -10 ... 10
    
    var body: some View {
        Stepper(value: $value, in: range) {
            
            Text("Value: \(value)")
                .foregroundColor(value > 0 ? .green : .red)
        
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
