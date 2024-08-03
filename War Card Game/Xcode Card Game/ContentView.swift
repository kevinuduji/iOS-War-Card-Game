//
//  ContentView.swift
//  Xcode Demo(Card Game)
//
//  Created by Kevin Uduji on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                //war logo
                Image("logo")
                Spacer()
                //two cards
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Button()
                Button(action: {
                   deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                //Player and CPU
                HStack{
                    Spacer()
                    //Player VStack
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                    }
                    //CPU VStack
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                    }
                    Spacer()
                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        //randomize player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        //randomize cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //update score
        if playerCardValue > cpuCardValue{
            //add to player score
            playerScore+=1
        }
        else if cpuCardValue > playerCardValue{
            //add to cpu score
            cpuScore+=1
        }
    }
}

#Preview {
    ContentView()
}
