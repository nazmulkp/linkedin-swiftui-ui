//
//  SearchBar.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(colorScheme == .dark ? .white : .gray)
            TextField(L10n.Search.search, text: $text)
                .foregroundColor(Asset.primaryBackground.swiftUIColor)
                .padding(.vertical, 5)
           
        }
        .padding(.horizontal, 10)
        .background(Asset.searchBarBackground.swiftUIColor)
        
    }
}
