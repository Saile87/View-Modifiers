//
//  ContentView.swift
//  View_Modifiers_project3_Day23
//
//  Created by Elias Breitenbach on 17.03.23.
//

import SwiftUI

struct MottoView: View {
    var motto1: some View {
        Text("Mario")
    }
    
    let motto2 = Text("Luigi")
    
    @ViewBuilder var attitude: some View {
        Text("Jump")
        Text("Run")
    }
    var body: some View {
        attitude
    }
}

struct ContentView: View {
    var body: some View {
        Button("Hello World") {
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
