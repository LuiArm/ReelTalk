//
//  ContentView.swift
//  ReelTalk
//
//  Created by luis armendariz on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    var body: some View {
        VStack {
            TabView(selection: $index){
                ForEach((0...3), id: \.self){ index in
                    WelcomeView()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        HStack(spacing: 2) {
            ForEach((0...3), id: \.self) { index in
                Rectangle()
                    .fill(index == self.index ? Color.purple : Color.purple.opacity(0.5))
                    .frame(width: 30, height: 5)

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
