//
//  ContentView.swift
//  MarieCard
//
//  Created by Marie P. on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Color(red: 0.47, green: 0.44, blue: 0.65)
                
            VStack {
                
                Spacer()
                Image("portrait")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                Text("Hello, I'm Marie!")
                    .bold()
                    .font(Font.custom("Yesteryear-Regular", size: 40))
                    .foregroundColor(.white)
                Text("Excellent Procrastinator")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoViewRect(text: "xxxxxxx@gmail.com", imageName: "envelope.circle.fill")
                InfoViewRect(text: "come visit us in SF", imageName: "eyes")
                Spacer()
                
            }
            
        }
        
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
        
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4717197418, green: 0.4408448339, blue: 0.6524076462, alpha: 1)), Color(#colorLiteral(red: 0.177675795, green: 0.1649666701, blue: 0.2457111791, alpha: 1))]), startPoint: .top, endPoint: .bottom ))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoViewRect: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    //.frame(width: 40, height: 40)
                    .foregroundColor(.orange)
                    .font(.title)
                Text(text)
            })
            .padding(.all)
    }
}
