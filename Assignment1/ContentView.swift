//
//  ContentView.swift
//  Assignment1
//
//  Created by Morgan Pence on 8/29/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
    
                
            Text("Hello, world!")
                .fontWeight(.bold)
            Text("Welcome to my first Xcode")
                .foregroundColor(.green)
            
            Image("IMG_1239")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
            HStack{
                Text("Aye look at my HStack")
                MyNameInBlue()
            }
        }
        .padding()
        
    }
}

struct MyNameInBlue: View{
    var body: some View {
        VStack{
            Text("Morgan!")
                .foregroundColor(.green)
            Circle()
                .foregroundColor(.blue)
        }

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

