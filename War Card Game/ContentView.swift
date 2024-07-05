//
//  ContentView.swift
//  War Card Game
//
//  Created by Ben Do on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logo")
                HStack {
                    Image(playerCard)
                        .padding()
                    Image(cpuCard)
                }
                .padding()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                HStack {
                    VStack {
                        Text("Player")
                            .font(.system(size: 20))
                            .padding()
                        Text("\(playerScore)")
                            .font(.system(size: 40))
                            .padding()
                    }
                    .padding()
                    VStack {
                        Text("CPU")
                            .font(.system(size: 20))
                            .padding()
                        Text("\(cpuScore)")
                            .font(.system(size: 40))
                            .padding()
                    }
                    .padding()
                    
                }
            }
            .padding()
        }
        
        
    }
    
    func deal() {
        var playerRandomNum = Int.random(in: 2...14)
        var cpuRandomNum = Int.random(in: 2...14)
        // Randomize the players card
        playerCard = "card\(playerRandomNum)"
        
        // Randomize the cpu card
        cpuCard = "card\(cpuRandomNum)"
        
        // Update the scores
        if (playerRandomNum > cpuRandomNum) {
            playerScore += 1
        } else {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
