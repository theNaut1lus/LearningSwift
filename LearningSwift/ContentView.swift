//
//  ContentView.swift
//  LearningSwift
//
//  Created by Sidak Singh Aulakh on 19/3/2024.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Lightning"
    @State var toggle = false
    @State var string = ""
    @State var list: [String] = []
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .ignoresSafeArea()
            VStack {
                ForEach(list, id:\.self) {
                    thing in Text(thing)
                }
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.black)
                Button("button") {
                    print("hello world")
                }
                TextField("Text", text: $string)
                Button(action: {
                    print(string)
                    print("hello lightning!")
                    toggle.toggle()
                    text = (toggle) ? "Lightning" : "Bolt"
                    list.append(string)
                    print(list)
                }, label: {
                    Image(systemName: "bolt.heart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .foregroundStyle(.yellow)
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.orange) // change color for a button, use tint, everything else uses forgroundStyle
                
            }
        }
    }
}

#Preview {
    ContentView()
}
