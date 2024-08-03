//
//  SendMessageButton.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct SendMessageButton: View {
    
    var body: some View {
        Image(systemName: "paperplane.fill")
            .font(.system(size: 13))
            .foregroundColor(Asset.secondaryText.swiftUIColor)
            .padding(8)
            .background(Circle().stroke(Asset.grayTextColor.swiftUIColor, lineWidth: 1))
            .padding(.top, 15)
    }
}
