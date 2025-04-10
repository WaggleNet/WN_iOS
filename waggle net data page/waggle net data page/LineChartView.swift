//
//  LineChartView.swift
//  waggle net data page
//
// 
//

import SwiftUI
import Charts

struct LineChartView: View {
    var data: [(day:String, value:Double)]
    var xlabel: String
    var ylabel: String
    

    var body: some View {
        
        let values = data.map { $0.value }
        let stdDev = standardDeviation(from: values)
        let minValue = calculateMinValue(from: values) - stdDev
        let maxValue = calculateMaxValue(from: values) + stdDev
        
        Chart {
            ForEach(data, id: \.day) { point in
                LineMark(
                    x: .value(xlabel, point.day),
                    y: .value(ylabel, point.value)
                )
                .foregroundStyle(.yellow)
            }
        }
        .chartYAxis {
            AxisMarks(position: .leading)
        }
        .chartYScale(domain: minValue...maxValue)
    }
    
    private func calculateMinValue(from values: [Double]) -> Double {
        return values.min() ?? 0
    }

    private func calculateMaxValue(from values: [Double]) -> Double {
        return values.max() ?? 100
    }
    
    private func standardDeviation(from values: [Double]) -> Double {
        let size = values.count
        var sum = 0.0
        var SD = 0.0
        var S = 0.0
        var resultSD = 0.0

       for x in 0..<size{
          sum += values[x]
       }
       let meanValue = sum/Double(size)
       
       for y in 0..<size{
          SD += pow(Double(values[y] - meanValue), 2)
       }
       S = SD/Double(size)
       resultSD = sqrt(S)
        
        return resultSD

    }
    
}
