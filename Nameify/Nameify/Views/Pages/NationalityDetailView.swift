//
//  NationalityDetailView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI
import Charts
import MapKit

// Nationality Detail View
// This view holds more information about the nationality prediction.
struct NationalityDetailView: View {
    
    // MARK: Fields
    
    // Variables to keep track of data response.
    var nationalityData: DGNationalizeResponse!
    
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
                Label("Nationality Prediction", systemImage: "globe.americas.fill")
                    .foregroundColor(.purple)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 32)
                
                // Country text.
                Text("\(DGCountries().getCountryName(code: nationalityData.country[0].countryId))")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 16)
                    .padding(.bottom, 10)
                
                // Probabilities title.
                Text("Probabilities")
                    .font(.title2)
                    .fontWeight(.bold)
                
                // Chart
                // This chart is a horizontal bar chart that displays the probability for each country.
                Chart {
                    ForEach(nationalityData.barChartData()) { shape in
                        BarMark(x: .value("Probability", shape.probability), y: .value("Country", DGCountries().getCountryName(code: shape.countryId)))
                            .foregroundStyle(by: .value("Status", shape.status))
                    }
                }
                // Format for the chart.
                .chartForegroundStyleScale(["primary": .purple, "secondary": Color(red: 218.0/255, green: 143.0/255, blue: 255.0/255)])
                .chartLegend(.hidden)
                .padding(.horizontal, 16)
                .padding(.top, 8)
                .aspectRatio(CGSize(width: 1, height: 0.5), contentMode: .fit)
                
                // Description text.
                Text("Your nationality is most likely to be from \(DGCountries().getCountryName(code: nationalityData.country[0].countryId)), with a \(String(format: "%.0f", nationalityData.country[0].probability * 100))% chance.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                
                // TODO: Implement the map feature.
                // I really wanted to add a map feature to the nationality detail view, but more work will
                // have to be done to ensure that the map displays all of the countries appropriately
                // and effectively.
                /*
                    Text("\(Countries().getCountryName(code: nationalityData.country[0].countryId)) on the Map")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 8)

                    Map(coordinateRegion: $coordinateRegion)
                        .frame(height: 230)
                        .padding(.horizontal, 48)
                        .padding(.top, 8)
                        .cornerRadius(20)
                 */
                
                Spacer()
            } // V Stack
        } // Scroll View
    } // Z Stack
    } // View
    
} // NationalityDetailView

// Preview
struct NationalityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NationalityDetailView(nationalityData: DGNationalizeResponse(name: "Ajay", country: [
            DGCountryResponse(countryId: "IN", probability: 0.6),
            DGCountryResponse(countryId: "PK", probability: 0.3),
            DGCountryResponse(countryId: "US", probability: 0.1)
        ]))
    }
}
