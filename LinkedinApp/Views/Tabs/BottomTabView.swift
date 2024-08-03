//
//  BottomTabView.swift
//  LinkedinApp
//
//  Created by Md. Nazmul Hasan on 3/8/24.
//

import SwiftUI

struct BottomTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Asset.background.swiftUIColor.ignoresSafeArea()
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text(L10n.Menu.home)
                        }
                        .tag(0)
                    
                    MyNetworkView()
                        .tabItem {
                            Image(systemName: "person.2.fill")
                            Text(L10n.Menu.myNetwork)
                        }
                        .tag(1)
                    
                    PostView()
                        .tabItem {
                            Image(systemName: "plus.square.fill")
                            Text(L10n.Menu.post)
                        }
                        .tag(2)
                    
                    NotificationsView()
                        .tabItem {
                            Image(systemName: "bell.fill")
                            Text(L10n.Menu.notifications)
                        }
                        .tag(3)
                    
                    JobsView()
                        .tabItem {
                            Image(systemName: "briefcase.fill")
                            Text(L10n.Menu.jobs)
                        }
                        .tag(4)
                }
                .accentColor(Asset.primaryBackground.swiftUIColor) // Change the selected tab color based on mode
                
                // Indicator
                GeometryReader { geometry in
                    VStack {
                        Rectangle()
                            .frame(width: (geometry.size.width - 50) / 5, height: 3)
                            .foregroundColor(Asset.primaryBackground.swiftUIColor)
                            .offset(x: self.indicatorOffset(geometry))
                            .animation(.easeInOut, value: selectedTab)
                        Spacer()
                    }
                    .padding(.horizontal, 5)
                }
                .frame(height: 50)
            }
        }
    }
    
    private func indicatorOffset(_ geometry: GeometryProxy) -> CGFloat {
        let tabWidth = geometry.size.width / 5
        return CGFloat(selectedTab) * tabWidth
    }
}
