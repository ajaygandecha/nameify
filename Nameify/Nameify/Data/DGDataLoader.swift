//
//  DGDataLoader.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import Foundation

// Structure that is responsible for loading Demographix data for a given name.
struct DGDataLoader {
    
    //MARK: Load Data Function
    /**
     This function loads in the Agify.io, Genderize.io, and Nationalize.io data for a given name into the app.
     
     - Parameter name: The requested name to fetch the data for.
    
     - Returns: Data from all three API sources, bundled in a single `DGResponse` object.
     */
    static func loadData(name: String) async throws -> DGResponse {
        
        var agifyResponse: DGAgifyResponse!
        var genderizeResponse: DGGenderizeResponse!
        var nationalizeResponse: DGNationalizeResponse!
        
        //MARK: Load in Agify Data
        
        // Creates URL object for Agify API request, and throws error if failed.
        guard let url = URL(string: "https://api.agify.io?name=\(name)") else {
            throw DGDataLoadError.operationFailed
        }
        
        // Fetches JSON data from URL, decodes Agify.io JSON data into DGAgifyResponse data, and throws error if failed.
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedData = try? JSONDecoder().decode(DGAgifyResponse.self, from: data) {
                agifyResponse = decodedData
            }
        } catch {
            print("Error loading Agify data.")
            throw DGDataLoadError.operationFailed
        }
        
        
        //MARK: Load in Genderize Data
        
        // Creates URL object for Genderize API request, and throws error if failed.
        guard let url = URL(string: "https://api.genderize.io/?name=\(name)") else {
            throw DGDataLoadError.operationFailed
        }
        
        // Fetches JSON data from URL, decodes Genderize.io JSON data into DGGenderize data, and throws error if failed.
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedData = try? JSONDecoder().decode(DGGenderizeResponse.self, from: data) {
                genderizeResponse = decodedData
            }
        } catch {
            print("Error loading Generize data.")
            throw DGDataLoadError.operationFailed
        }
        
        //MARK: Load in Nationalize Data
        
        // Creates URL object for Nationalize API request, and throws error if failed.
        guard let url = URL(string: "https://api.nationalize.io?name=\(name)") else {
            throw DGDataLoadError.operationFailed
        }
        
        // Fetches JSON data from URL, decodes Nationalize.io JSON data into DGNationalizeResponse data, and throws error if failed.
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedData = try? JSONDecoder().decode(DGNationalizeResponse.self, from: data) {
                nationalizeResponse = decodedData
                if nationalizeResponse.country.count < 1 {
                    throw DGDataLoadError.operationFailed
                }
            }
        } catch {
            print("Error loading Generize data.")
            throw DGDataLoadError.operationFailed
        }
        
        
        //MARK: Wrap Data in Response object and return
        
        // Wraps the three response objects created above into a DGResponse container, and returns the container.
        let finalResponse = DGResponse(agifyResponse: agifyResponse, genderizeResponse: genderizeResponse, nationalizeResponse: nationalizeResponse)
        
        return finalResponse
    }
}

// Enumeration that represents any errors from the data load step.
enum DGDataLoadError: Error {
    case operationFailed
}
