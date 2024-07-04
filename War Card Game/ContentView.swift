//
//  ContentView.swift
//  War Card Game
//
//  Created by Ben Do on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logo")
                HStack {
                    Image("card2")
                        .padding()
                    Image("card3")
                }
                .padding()
                Image("button")
                HStack {
                    VStack {
                        Text("Player")
                            .font(.system(size: 20))
                            .padding()
                        Text("0")
                            .font(.system(size: 40))
                            .padding()
                    }
                    .padding()
                    VStack {
                        Text("CPU")
                            .font(.system(size: 20))
                            .padding()
                        Text("0")
                            .font(.system(size: 40))
                            .padding()
                    }
                    .padding()
                    
                }
            }
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
