//
//  ProfileCardView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct ProfileCardView: View {
    
    var body: some View {
        HStack(alignment: .top) {
            ProfileImageView(imageName: "nebraska-logo")
                .padding(.leading)
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        UserInfoView()
                        MutualView()
                    }
                    Spacer()
                    SendMessageButton()
                }
                .padding(.trailing)
                Divider()
                    .background(Asset.grayTextColor.swiftUIColor)
                    .padding(.top,5)
            }
        }
        .padding(.vertical, 8)
        .background(Asset.background.swiftUIColor)
    }
}
