//
//  DemographicTileView.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import SwiftUI

// Demographic Tile View
// This subview / component is a tile that holds demographic information, and is on the homepage.
struct DemographicTileView: View {
    
    // MARK: Fields
    
    // Variables to keep track of important UI parameters.
    var labelTitle: String!
    var labelImage: String!
    var labelColor: Color!
    var buttonText: String!
    var largeText: String!
    var caption: String!
    
    // MARK: Constructure
    
    // Initializes this view.
    init(labelTitle: String, labelImage: String, labelColor: Color, buttonText: String, largeText: String, caption: String) {
        
        self.labelTitle = labelTitle
        self.labelImage = labelImage
        self.labelColor = labelColor
        self.buttonText = buttonText
        self.largeText = largeText
        self.caption = caption
    }
    
    // MARK: View
    
    // View starts here.
    var body: some View {
        
        // GroupBox that contains all items.
        GroupBox {
            
            // Content of the tile view.
            HStack(alignment: .lastTextBaseline) {
                
                // Large text.
                Text("\(self.largeText)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                // Caption.
                Text("\(self.caption)")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
                Spacer()
                
            }
            .padding(.top, 2)
        } label: {
            
            // Content of the label of the GroupBox.
            HStack {
                
                // Label and label image.
                Label("\(self.labelTitle)", systemImage: "\(self.labelImage ?? "")")
                    .foregroundColor(labelColor)
                Spacer()
                
                // Additional caption text on the left of the button.
                Text("\(self.buttonText)")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                // Right chevron button.
                Image(systemName: "chevron.right").foregroundColor(.secondary).imageScale(.small)
                
            }
        }
        // Applies a style to the group box.
        .groupBoxStyle(DemographicTileViewGroupBoxStyle()).padding(.horizontal, 16).padding(.top, 8)
        
    } // View
    
} // DemographicTileView

// GroupBoxTyle to ensure rounded edges and a secondary background color.
struct DemographicTileViewGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
            .fill(Color(.secondarySystemGroupedBackground)))
    }
}
