//
//  MutualView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct MutualView: View {

    var body: some View {
        HStack {
            MutualConnectionsView()
            Text(L10n.Search.mutualConnections(16))
                .font(.system(size: 13, weight: .light))
                .foregroundColor(Asset.grayTextColor.swiftUIColor)
        }
    }
}
