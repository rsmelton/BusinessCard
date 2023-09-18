//
//  ContentView.swift
//  RobertCard
//
//  Created by Scott Melton on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.04, green: 0.52, blue: 0.89, opacity: 0.75)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Robert")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Robert Melton")
                    .font(Font.custom("Caveat-Regular", size: 50))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("Software Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "(256)-123-4567", imageName: "phone.circle")
                InfoView(text: "fakegmail@gmail.com", imageName: "envelope.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
