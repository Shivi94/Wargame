//
//  ContentView.swift
//  war code game
//
//  Created by Mayank Saxena on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var playercard = "back"
    
    @State var cpucard = "back"
    
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View {
ZStack
        {
Image("background-plain")
        .resizable()
        .ignoresSafeArea()
            
  VStack
            {
                Spacer()
  Image("logo")
                Spacer()
        HStack
                {
                    Spacer()
        Image(playercard)
                    Spacer()
        Image(cpucard)
                    Spacer()
                }
                Spacer()
                Button {
                    Deal()
                } label: {
                    Image("button")
                }

                Spacer()
        HStack
                {
                    Spacer()
                   VStack
                    {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                       }
                    Spacer()
                    VStack
                     {
                         Text("CPU")
                             .font(.headline)
                             .padding(.bottom, 10.0)
                         Text(String (cpuscore))
                             .font(.largeTitle)
                       }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    func Deal()
    {
        
        //randomise the player card
        let playercardvalue = Int.random(in: 2...14)
        playercard = "card" + String (playercardvalue)
        //randomise the cpu card
        let cpucardvalue = Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
        //update the score
        if playercardvalue > cpucardvalue
        {
            //add 1 to playerscore
            playerscore += 1
        }
        else if cpucardvalue > playercardvalue
        {
            //add 1 to cpuscore
            cpuscore += 1
        }
       
        }
        
    }


#Preview {
    ContentView()
}
