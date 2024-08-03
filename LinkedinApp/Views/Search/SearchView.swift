//
//  SearchView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var coordinator: Coordinator
    @State private var searchText = ""
    
    var body: some View {
        
        ZStack {
            VStack {
                Divider()
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        SearchHeaderView()
                            .background(Asset.searchResultBackGround.swiftUIColor)
                        ForEach(1..<15) { index in
                            ProfileCardView()
                        }
                    }
                }
            }
            .padding(.top,5)
            .background(Asset.background.swiftUIColor)
        }
        
        .navigationBarBackButtonHidden(true) // Hide the default back button
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    coordinator.navigationPath.removeLast()
                }) {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Asset.foreground.swiftUIColor)
                }
            }
            ToolbarItem(placement: .principal) {
                SearchBar(text: $searchText)
            }
        }
    }
}

extension Color {
    static let dynamicColor = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .black : .white
    })
}
