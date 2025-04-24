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
        ZStack{
            ScrollView{
                VStack(alignment: .leading, spacing:0) {
                    Spacer()
                    
                    Text("WaggleNet")
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                        .foregroundColor(.black)
                    
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
            
            
            VStack {
                HStack {
                    Button(action: {
                        path.append(AppPage.page2)
                    }) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                            .background(Circle().fill(Color.yellow))
                            .foregroundColor(.white)
                    }
                }
                .offset(x: 0.4 * UIScreen.main.bounds.width, y: -0.4 * UIScreen.main.bounds.height)
            }
        }
            
        
            
        
    }
}
