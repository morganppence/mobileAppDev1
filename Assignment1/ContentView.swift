//
//  ContentView.swift
//  Assignment2 - Updates to assignment 1
//
//  Created by Morgan Pence on 8/29/23.
// used help from Youtube Video: "Easy SwiftUI Animation Tutorial with 3 Examples" by Logan Koshenka

import SwiftUI


struct ContentView: View {
    
    @State var isOn: Bool = false
    

    var body: some View {
        ZStack{
            LinearGradient(colors: [.green,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            
            VStack{
                Text("Hello, world!")
                    .fontWeight(.bold)
                Text("Welcome to my first Xcode")
                    .foregroundColor(.blue)
                
                Image("IMG_1239")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                
                Toggle("Would you like to opt in to my app?", isOn: $isOn)
                
            }
            .padding()
            .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style:.continuous))
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct CircleImage: View {
    var body: some View {
        Image("IMG_1239")
            .clipShape(Circle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_Dark_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.dynamicTypeSize,.xxxLarge)
    }
}

