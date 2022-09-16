//
//  AboutView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI

// About View
// This view holds more information about Nameify.
struct AboutView: View {
    
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
                
                // Title text.
                Text("About")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 32)
                
                // About text.
                Text("Nameify is an app that predicts demographic factors based on a person's name.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 2)
                
                Text("This app is powered by the Agify.io, Genderize.io, and Nationalize.io APIs by Demographix. These APIs are free to use for up to 1,000 searches / day. These APIs contain millions of data points and classifies data based on these points. The wide-ranging applications for this technology are apparent. Check out the \"Cool Uses\" section of the Agify.io website to learn more about cool ways this API has been used in the real world.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 2)
                Text("This app was created by Ajay Gandecha for the 2022 Technical Interview for App Team Carolina.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 2)
                Text("© Copyright 2022 Ajay Gandecha | All Rights Reserved.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 2)
                
                Spacer()
                
            } // V Stack
        } // Scroll View
        } // Z  Stack
    } // View
    
} // AboutView

// Preview
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
