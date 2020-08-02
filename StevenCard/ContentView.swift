//
//  ContentView.swift
//  StevenCard
//
//  Created by Steven Vandegrift on 7/31/20.
//  Copyright © 2020 Steven Vandegrift. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                    Image("steven")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Steven Vandegrift")
                    .foregroundColor(.white)
                    .font(Font.custom("FredokaOne-Regular", size: 30))
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "svandegrift@icloud.com", imageName: "envelope.fill")
                InfoView(text: "sjvandy.com", imageName: "desktopcomputer")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


