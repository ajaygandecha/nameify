//
//  GenderDetailView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI
import Charts

// Gender Detail View
// This view holds more information about the gender prediction.
struct GenderDetailView: View {
    
    // MARK: Fields
    
    // Variables to keep track of data response.
    var genderData: DGGenderizeResponse!
    
    // MARK: View
    
    // View starts here.
    var body: some View {
        
        // Z Stack needed to display a background color beneath all other elements on the page.
        ZStack {
        
        // Background color
        Color(.systemGroupedBackground)
            .ignoresSafeArea()
        
        // Main content view is contained within a scroll view.
        ScrollView {
            VStack {
                
                // Page title.
                Label("Gender Prediction", systemImage: "person.text.rectangle")
                    .foregroundColor(genderData.gender.genderColor())
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 32)
                
                // Gender text.
                Text("\(genderData.gender.rawValue.capitalized)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 16)
                    .padding(.bottom, 10)
                
                // Probabilities subheading.
                Text("Probabilities")
                    .font(.title2)
                    .fontWeight(.bold)
                
                // Chart
                // This chart is a vertical bar chart that displays the probability for each gender.
                Chart {
                    ForEach(genderData.barChartData()) { shape in
                        BarMark(x: .value("Gender", shape.gender), y: .value("Probability", shape.probability))
                            .foregroundStyle(by: .value("Gender", shape.gender))
                    }
                }
                // Format for the chart.
                .chartForegroundStyleScale(["M": .teal, "F": .pink])
                .chartLegend(.hidden)
                .padding(.horizontal, 32)
                .aspectRatio(CGSize(width: 1, height: 0.5), contentMode: .fit)
                
                // Description text.
                Text("Based on analyzing \(genderData.count) data points, there is a \(String(format: "%.0f", genderData.probability * 100))% chance that you are a \(genderData.gender.rawValue).")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                
                Spacer()
            } // V Stack
        } // Scroll View
        } // Z Stack
    } // View
    
} // GenderDetailView

// Preview
struct GenderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GenderDetailView()
    }
}
