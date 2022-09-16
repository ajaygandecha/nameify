//
//  DGResponse.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import Foundation
import SwiftUI

// MARK: Response Structures

// Structure to represent the main response from all three API sources.
struct DGResponse: Codable {
    var agifyResponse: DGAgifyResponse
    var genderizeResponse: DGGenderizeResponse
    var nationalizeResponse: DGNationalizeResponse
}

// MARK: Agify.io Response Structures

// Structure to represent the response from the Agify.io API.
struct DGAgifyResponse: Codable {
    var name: String
    var age: Int
    var count: Int
}

// MARK: Genderize.io Response Structures

// Structure to represent the response from the Genderize.io API.
struct DGGenderizeResponse: Codable {
    var name: String
    var gender: DGGender
    var probability: Double
    var count: Int
    
    /**
     Function that generates appropriate bar chart data from the gender data.
     
     - Returns an Array of bar chart shapes for the gender chart.
     */
    func barChartData() -> [DGGenderBarChartShape] {
        
        switch(self.gender) {
        case .male:
            return [
                DGGenderBarChartShape(gender: "M", probability: self.probability),
                DGGenderBarChartShape(gender: "F", probability: 1 - self.probability)
            ]
        case .female:
            return [
                DGGenderBarChartShape(gender: "M", probability: 1 - self.probability),
                DGGenderBarChartShape(gender: "F", probability: self.probability)
            ]
        }
    }
}

// Enum that holds the two possible response genders from the Genderize.io API.
enum DGGender: String, Codable {
    case male = "male"
    case female = "female"
    
    /**
     Function that returns a representative color given the gender value.
     
     - Returns a SwiftUI color.
     */
    func genderColor() -> Color {
        switch(self) {
        case .male:
            return Color.teal
        case .female:
            return Color.pink
        }
    }
}

// Structure that represents gender in a bar chart shape.
struct DGGenderBarChartShape: Identifiable {
    var gender: String
    var probability: Double
    var id = UUID()
}

// MARK: Nationalize.io Response Structures

// Structure to represent the response from the Genderize.io API.
struct DGNationalizeResponse: Codable {
    var name: String
    var country: [DGCountryResponse]
    
    // Enum that tracks status so that the bar chart knows which is the primary country guess.
    enum DGNationalizeResponseCountryStatus: String {
        case primary = "Primary"
        case secondary = "Secondary"
    }
    
    /**
     Function that generates appropriate bar chart data from the nationality data.
     
     - Returns an Array of bar chart shapes for the nationality chart.
     */
    func barChartData() -> [DGNationalityBarChartShape] {
        
        var shapes: [DGNationalityBarChartShape] = []
        
        for (i,c) in country.enumerated() {
            
            var status = "secondary"
            
            if(i == 0) {
                status = "primary"
            }
            
            shapes.append(DGNationalityBarChartShape(countryId: c.countryId, probability: c.probability, status: status))
        }
        
        return shapes
    }
    
}

// Structure that represents country data within the Nationalize.io API.
struct DGCountryResponse: Codable {
    
    enum CodingKeys: String, CodingKey {
        case countryId = "country_id"
        case probability
    }
    
    var countryId: String
    var probability: Double
    
}

// Structure that represents nationality in a bar chart shape.
struct DGNationalityBarChartShape: Identifiable {
    var countryId: String
    var probability: Double
    var status: String
    var id = UUID()
}
