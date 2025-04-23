//
//  waggle_net_data_pageApp.swift
//  waggle net data page
//
//  Created by Raina Shrivastava on 3/27/25.
//

import SwiftUI

enum AppPage: Hashable {
    case page1, page2
}

@main
struct myApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct MainView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DataView(path: $path)
                .navigationDestination(for: AppPage.self) { page in
                    switch page {
                    case .page1:
                        DataView(path: $path)
                    case .page2:
                        ProfileView(path: $path)
                    }
                }
        }
    }
}
