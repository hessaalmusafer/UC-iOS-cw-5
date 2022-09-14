//
//  ContentView.swift
//  CW5
//
//  Created by Hessa AlMusafer on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var choice = ""
    let emojis = ["😅","🤣","🥰","🤪","🤓","🥳","🤩","🤯","🤬","🤕"]
    var body: some View {
        
        VStack
        {
        Text("Emoji of the day")
            .font(.largeTitle)
            .bold()
            .padding()
            
            Text(choice)
                .font(.system(size: 150))
                .frame(width: 200, height: 200)
                .padding()
                
            
            ScrollView(.horizontal)
            {
                HStack
                {
                ForEach(emojis, id: \.self) {emoji in
                        Text(emoji)
                        .font(.system(size: 70))
                        .background(.gray)
                        .cornerRadius(90)
                        .onTapGesture {
                            choice = emoji
                        }
                   
                }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
