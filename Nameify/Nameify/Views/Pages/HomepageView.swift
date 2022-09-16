//
//  HomepageView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI
import MapKit

// Homepage View
// This view serves as the main home/landing page for Nameify.
struct HomepageView: View {
    
    // MARK: Fields
    
    // Variables to keep track of text field inputs.
    @State private var textFieldText = ""
    @State private var inputtedNameComponents = PersonNameComponents()
    
    // Variables to keep track of shown sheets.
    @State private var showingAgeSheet: Bool = false
    @State private var showingGenderSheet: Bool = false
    @State private var showingNationalitySheet: Bool = false
    @State private var showingAboutSheet: Bool = false
    
    // Variables to keep track of whether to show certain UI components.
    @State private var showInputErrorMessage: Bool = false
    
    // Variables to keep track of data response.
    @State private var response: DGResponse? = nil

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
                
                // MARK: Header UI Components
                
                // App title text.
                Text("Nameify")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 32)
                
                // UI Components to show if no name has been inputted yet.
                if response == nil {
                    
                    // App description text.
                    Text("Learn what your name says about you, based on over 114 million data points from over 100 countries around the word.")
                        .lineLimit(5)
                        .multilineTextAlignment(.center)
                        .padding(.top, 2)
                        .padding(.horizontal, 16)
                    
                    // Prompt.
                    Text("Enter your name below.")
                        .padding(.top, 8)
                        .fontWeight(.semibold)
                    
                    // Text field for the input name.
                    TextField("Put your name here!", text: $textFieldText)
                        .deleteDisabled(true)
                        .padding(.horizontal, 16)
                        .disableAutocorrection(true)
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.done)
                        // Action to execute when the user presses enter.
                        .onSubmit {
                            
                            // Hide any error messages, if shown on screen.
                            showInputErrorMessage = false
                            
                            // If the text field is empty, return the view to a default state.
                            if textFieldText == "" {
                                response = nil
                            }
                            // Else, run a task that attempts to load data for inputted name and show results.
                            // Displays an error message on-screen if operation fails.
                            else {
                                Task {
                                    do {
                                        
                                        // Create PersonNameComponents() for inputted name to partse first name (given name).
                                        inputtedNameComponents = try PersonNameComponents(textFieldText)
                                        
                                        print("Expected input: \(inputtedNameComponents)")
                                        
                                        // Load data.
                                        response = try await DGDataLoader.loadData(name: inputtedNameComponents.givenName ?? "")
                                        print(response!)
                                    }
                                    catch _ {
                                        showInputErrorMessage = true
                                    }
                                } // Task
                            }
                            
                        } // onSubmit
                }
                
                // UI Components to show if there is an error.
                if showInputErrorMessage {
                    Text("Invalid name. Please enter a new name.")
                        .font(.footnote)
                        .foregroundColor(.red)
                        .padding(.top, 2)
                }
                
                // UI Components to show when data for inputted name is retrieved.
                if let demographicData = response {
                    
                    // Hello message.
                    Text("Hi, \(inputtedNameComponents.givenName?.capitalized ?? "<Name here>")!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    
                    // Button that clears current name and allows user to enter a new one.
                    Button {
                        textFieldText = ""
                        response = nil
                    } label: {
                        Label("Choose another name", systemImage: "arrow.counterclockwise")
                            .font(.caption)
                            .tint(.secondary)
                    }
                    .padding(.top, 8)
                    
                    // Descriptor text.
                    Text("You are likely...")
                        .fontWeight(.bold)
                        .padding(.top, 8)
                    
                    
                    // MARK: Demographic Tiles
                    
                    // DemographicTileView for the Age Prediction.
                    DemographicTileView(labelTitle: "Age Prediction", labelImage: "figure.and.child.holdinghands", labelColor: .green, buttonText: "", largeText: "\(demographicData.agifyResponse.age)", caption: "years old")
                        // Action to execute when the tile is pressed.
                        .onTapGesture {
                            showingAgeSheet.toggle()
                        }
                        // Detail sheet (view) to show when the tile is pressed.
                        // Show the AgeDetailView.
                        .sheet(isPresented: $showingAgeSheet) {
                            AgeDetailView(ageData: response!.agifyResponse)
                        }
                    
                    // DemographicTileView for the Gender Prediction.
                    DemographicTileView(labelTitle: "Gender Prediction", labelImage: "person.text.rectangle", labelColor: demographicData.genderizeResponse.gender.genderColor(), buttonText: "", largeText: "\(demographicData.genderizeResponse.gender.rawValue.capitalized)", caption: "")
                        // Action to execute when the tile is pressed.
                        .onTapGesture {
                            showingGenderSheet.toggle()
                        }
                        // Detail sheet (view) to show when the tile is pressed.
                        // Show the GenderDetailView.
                        .sheet(isPresented: $showingGenderSheet) {
                            GenderDetailView(genderData: response!.genderizeResponse)
                        }
                    
                    // DemographicTileView for the Nationality Prediction.
                    DemographicTileView(labelTitle: "Nationality Prediction", labelImage: "globe.americas.fill", labelColor: .purple, buttonText: "+\(demographicData.nationalizeResponse.country.count - 1) more", largeText: "\(DGCountries().getCountryName(code: demographicData.nationalizeResponse.country[0].countryId))", caption: "")
                        // Action to execute when the tile is pressed.
                        .onTapGesture {
                            showingNationalitySheet.toggle()
                        }
                        // Detail sheet (view) to show when the tile is pressed.
                        // Show the NationalityDetailView.
                        .sheet(isPresented: $showingNationalitySheet) {
                            
                            NationalityDetailView(nationalityData: response!.nationalizeResponse)
                        }
                    
                    // Tooltip to provide important gesture information to the users.
                        Label("Press tiles to view more", systemImage: "hand.tap.fill")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.horizontal, 16)
                            .padding(.top, 2)

                    // Spacer to ensure button below remains on the bottom of the view.
                    Spacer()
                    
                    // Button to show the About sheet.
                    Button {
                        showingAboutSheet.toggle()
                    } label: {
                        Label("About Nameify", systemImage: "questionmark.circle")
                            .font(.footnote)
                    }
                    // Detail sheet (view) to show when the tile is pressed.
                    // Show the AboutView.
                    .sheet(isPresented: $showingAboutSheet) {
                        AboutView()
                    }
                    .padding(.top, 32)
                }
            } // V Stack
        } // Scroll view
        } // Z Stack
    } // View
    
} // HomepageView Structure

// Preview
struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
