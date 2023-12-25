//
//  WelcomeView.swift
//  ReelTalk
//
//  Created by luis armendariz on 12/22/23.
//

import SwiftUI

struct WelcomeView: View {
    private let welcomeImages = ["Welcome1", "Welcome2", "Welcome3"]
    
    @State private var index = 0
    
    var body: some View {
        ZStack{
            ScrollView(.horizontal) {
                    LazyHStack(spacing: 0) {
                        ForEach(welcomeImages, id: \.self) { index in

                            Image(index)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                .padding(.horizontal, 20)
                                .containerRelativeFrame(.horizontal)
                        }
                    }
                    .scrollTargetLayout()
                }
            .scrollTargetBehavior(.viewAligned)
        }
        .background(Color.black)
        
        
        
        
        
//        VStack {
//            TabView(selection: $index){
//                ForEach(welcomeImages, id: \.self){ image in
//                    Image(image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 450)
//                }
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//        }
//        HStack(spacing: 2) {
//            ForEach((0..<3), id: \.self) { index in
//                Rectangle()
//                    .fill(index == self.index ? Color.purple : Color.purple.opacity(0.5))
//                    .frame(width: 30, height: 5)
//
//            }
//        }
//        .padding()
    }
}

#Preview {
    WelcomeView()
}


