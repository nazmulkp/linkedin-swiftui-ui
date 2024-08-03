//
//  SearchHeaderView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct SearchHeaderView : View {
    var body: some View {
        VStack {
            Text(L10n.Search.searchResults("510,000"))
                .font(.footnote)
                .padding(.vertical, 8)
                .padding(.horizontal)
                .foregroundColor(Asset.searchResultForground.swiftUIColor)
                .frame(maxWidth: .infinity,alignment: .leading)
        }
    }
}
