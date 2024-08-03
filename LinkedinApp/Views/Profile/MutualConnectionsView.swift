//
//  MutualConnectionsView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct MutualConnectionsView: View {
    var profileImages: [String] = ["delaware-logo", "rhodeIsland-logo", "columbia-logo"]
    
    var body: some View {
        HStack(spacing: -10) { // Overlapping the images
            ForEach(profileImages, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
            }
        }
    }
}
