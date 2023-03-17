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


struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text2: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text2)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func wattermarked(with text: String) -> some View {
        modifier(Watermark(text2: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("HELLO WORLD")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
//                .titleStyle()
            Button("Hello World") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
            
            VStack {
                CapsuleText(text: "Fist")
                    .foregroundColor(.white)
                CapsuleText(text: "Second")
                    .foregroundColor(.black)
                
                Color.blue
                    .frame(width: 300, height: 200)
                    .wattermarked(with: "Hacking with Elias")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
