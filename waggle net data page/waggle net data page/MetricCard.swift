//
//  MetricCard.swift
//  waggle net data page
//
//  
//

import SwiftUI

struct MetricCard: View {
    var title: String
    var value: String
    var change: String
    let lgray = Color(red: 0.8706, green: 0.8706, blue: 0.8706)

    var body: some View {
        VStack {
            Text(title)
                .font(.title3)
                .foregroundColor(.black)
            Text(value)
                .font(.title)
                .bold()
            Text(change)
                .font(.caption)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(lgray)
        .cornerRadius(10)
    }
}
