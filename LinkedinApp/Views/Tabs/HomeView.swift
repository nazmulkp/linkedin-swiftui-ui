//
//  HomeView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var coordinator = Coordinator()
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            VStack {
                Text("Home View")
                Button(action: {
                    coordinator.navigationPath.append(NavigationDestination.search)
                }) {
                    Text("Go to Detail View")
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                    
                        .foregroundColor(colorScheme == .dark ? Color.blue.opacity(0.8) : Color.blue)
                        .padding(.horizontal)
                    
                }
            }
            .navigationDestination(for: NavigationDestination.self) { destination in
                switch destination {
                case .search:
                    SearchView(coordinator: coordinator)
                default:
                    EmptyView()
                }
            }
            
        }
    }
}
