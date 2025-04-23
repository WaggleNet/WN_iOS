//
//  HiveMetricsView.swift
//  waggle net data page
//
//  
//

import SwiftUI


struct HiveMetricsView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(alignment: .leading, spacing:0) {
            HStack {
                
                HStack(spacing: 8) {
                    Text("WaggleNet")
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    path.append(AppPage.page2)
                }) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.white)
            //.shadow(color: Color.gray.opacity(0.3), radius: 3, x: 0, y: 2)
            
            Spacer()
        
            VStack(alignment: .leading) {
                Text("John’s Hive")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.yellow)
                    .padding(.horizontal)

                HStack {
                    MetricCard(title: "Temperature", value: "95.9°F", change: "+0.7° from average")
                    MetricCard(title: "Humidity", value: "72%", change: "-3.4% from average")
                }
                .padding()

                Text("Daily Averages")
                    .font(.headline)
                    .padding(.horizontal)

                LineChartView(data: [(day: "Mar 23", value: 94),(day: "Mar 24", value: 94.4),(day: "Mar 25", value: 96),(day: "Mar 26", value: 96.5),(day: "Mar 27", value: 95.5),(day: "Mar 28", value: 95),(day: "Mar 29", value: 96)], xlabel: "day", ylabel: "temperature")
                    .frame(height: 150)
                    .padding()
                
                Text("Weight")
                    .font(.headline)
                    .padding(.horizontal)
                
                LineChartView(data: [(day: "Mar 23", value: 43.5),(day: "Mar 24", value: 45.4),(day: "Mar 25", value: 45.8),(day: "Mar 26", value: 50.5),(day: "Mar 27", value: 51.5),(day: "Mar 28", value: 50.2),(day: "Mar 29", value: 46.9)], xlabel: "day", ylabel: "Weight")
                    .frame(height: 150)
                    .padding()

                Spacer()
            }
                        
        }
            
        
            
        
    }
}
