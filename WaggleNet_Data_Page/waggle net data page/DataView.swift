//
//  ContentView.swift
//  waggle net data page
//
//  
//

import SwiftUI


struct DataView: View {
    @Binding var path: NavigationPath

    var body: some View {
        HiveMetricsView(path: $path)
    }
}

#Preview {
    DataView(path: .constant(NavigationPath()))
}
