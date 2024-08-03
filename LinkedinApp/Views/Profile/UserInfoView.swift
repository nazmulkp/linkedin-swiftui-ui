//
//  UserInfoView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct UserInfoView: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Rajesh Malve")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Asset.foreground.swiftUIColor)
                Text("• 1st")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Asset.grayTextColor.swiftUIColor)
            }
            Text("CRM/Resource Manager @ Bravens Inc. | Advanced Lean Six Sigma Yellow Belt")
                .font(.system(size: 14))
                .fontWeight(.light)
                .foregroundColor(Asset.foreground.swiftUIColor)
                .lineLimit(2)
            Text("Chantilly, VA")
                .font(.subheadline)
                .foregroundColor(Asset.grayTextColor.swiftUIColor)
        }
        .truncationMode(.tail)
    }
}
