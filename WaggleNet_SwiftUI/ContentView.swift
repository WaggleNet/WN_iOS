//
//  ContentView.swift
//  WaggleNet_SwiftUI
//
//  Created by Guanwen yan on 3/21/fontSize.
//  Being modified by Jason Yao since 3/6/25.
//

import SwiftUI

struct ContentView: View {
    // User properties
    let username = "Jason Yao"
    let userEmail = "qyao7@illinois.edu"
    let tempWidth = 0.0
    let frameWidth = 0.275 * UIScreen.main.bounds.width
    let bottomWidth = 90.0
    let fontSize = 21.0
    let titleFontSize = 28.0
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            ScrollView {
                VStack(alignment: .center, spacing: 10) {
                    // userName
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: titleFontSize))
                            .foregroundColor(.yellow)
                        Text("Profile Page")
                            .font(.custom("Helvetica Neue", size: titleFontSize)) // Custom font
                            .bold()
                            .foregroundColor(.yellow)
                    }
                    Divider()
                        .frame(width: .infinity, height: 10)
                    HStack {
                        Spacer()
                            .frame(width: tempWidth)
                        Text("Username")
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(width: frameWidth, alignment: .leading)
                        Text(username)
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(maxWidth: .infinity, alignment: .leading) // Align to the left
                    }
                    // userEmail
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Spacer()
                            .frame(width: tempWidth)
                        Text("Email")
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(width: frameWidth, alignment: .leading)
                        Text("\(userEmail)")
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                        .frame(height: 10)
                    Button(action: {
                        print("Logged out!")
                    }) {
                        Text("Log out")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 0.15 * UIScreen.main.bounds.width)
                }
                .padding(.horizontal, 20)
                .padding(.top, 70)
                .padding(.bottom, 0)
                Spacer()
                    .frame(height: 500)
            /*
            HStack {
                 Image(systemName: "hexagon.tophalf.filled")
                 .font(.system(size: 30))
                 .foregroundColor(.yellow)
                 Spacer()
                 .frame(width: bottomWidth, alignment: .leading)
                 Image(systemName: "person.crop.circle")
                 .font(.system(size: titleFontSize)) // Adjust size
                 .foregroundColor(.blue)
                 }
                 .padding(.horizontal, 200)
                 .padding(.bottom, 10)
                 .padding(.top, 25)
                 .background(Color.yellow.opacity(0.3)) // Visualize the bottom section
            */
            }
            HStack {
                Spacer()
                    .frame(width: 25)
                Button(action: { print("Button tapped!") }) {
                    Image(systemName: "chevron.backward")
                        .font(.title)
                        .padding()
                        .background(Circle().fill(Color.yellow))
                        .foregroundColor(.white)
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