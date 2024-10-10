//
//  WaggleNet_SwiftUIApp.swift
//  WaggleNet_SwiftUI
//
//  Created by Guanwen yan on 3/21/24.
//

import SwiftUI
import Amplify
import Authenticator
import AWSCognitoAuthPlugin

@main
struct WaggleNet_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            Authenticator { state in
                VStack {
                    Text("Hello username, \(state.user.username)")
                    Image("hive").resizable()
                        .scaledToFit()
                    Button("Show Attributes") {
                        Task {
                            await fetchAttributes()
                        }
                    }
                    Button("Sign out") {
                        Task {
                            await state.signOut()
                        }
                    }
                }
            }
        }
    }
    
    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured with auth plugin")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
}

func fetchAttributes() async {
    do {
        let attributes = try await Amplify.Auth.fetchUserAttributes()
        print("User attributes - \(attributes)")
    } catch let error as AuthError{
        print("Fetching user attributes failed with error \(error)")
    } catch {
        print("Unexpected error: \(error)")
    }
}
