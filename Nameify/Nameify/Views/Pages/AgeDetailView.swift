//
//  AgeDetailView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI

// Age Detail View
// This view holds more information about the age prediction.
struct AgeDetailView: View {
    
    // MARK: Fields
    
    // Variables to keep track of data response.
    var ageData: DGAgifyResponse!
    
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
                Label("Age Prediction", systemImage: "figure.and.child.holdinghands")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 32)
                
                // Age text.
                Text("\(ageData.age) years old")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 16)
                    .padding(.bottom, 10)
                
                // Description text.
                Text("Based on analyzing \(ageData.count) data points, you are most likely \(ageData.age) years old.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                
                Spacer()
            } // V Stack
        } // Scroll View
        } // Z Stack
    } // View
    
} // AgeDetailView Structure

// Preview
struct AgeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AgeDetailView()
    }
}
