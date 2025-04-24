//
//  ContentView.swift
//  WaggleNet_SwiftUI
//
//  Created by Guanwen yan on 3/21/fontSize.
//  Being modified by Jason Yao since 3/6/25.
//

import SwiftUI

struct ProfileView: View {
    // User properties
    let username = "Jason Yao"
    let userEmail = "qyao7@illinois.edu"
    let frameWidth = 0.275 * UIScreen.main.bounds.width
    // let bottomWidth = 90.0
    let fontSize = 21.0
    let titleFontSize = 28.0
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        ZStack() {
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
                        .frame(height: 10)
                    HStack {
                        Text("Username")
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(width: frameWidth, alignment: .leading)
                        Text(username)
                            .font(.custom("Helvetica Neue", size: fontSize))
                            .frame(maxWidth: .infinity, alignment: .leading) // Align to the left
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
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
            }
            Button(action: {
                    path.removeLast()
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.largeTitle)
                        .background(Circle().fill(Color.yellow))
                        .foregroundColor(.white)
                }
                .offset(x: -0.4 * UIScreen.main.bounds.width, y: -0.4 * UIScreen.main.bounds.height)
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(path: .constant(NavigationPath()))
    }
}
