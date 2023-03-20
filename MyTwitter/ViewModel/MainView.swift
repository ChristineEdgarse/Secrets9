//
//  MainView.swift
//  MyTwitter
//
//  Created by Administrator on 20/03/23.
//

import SwiftUI

struct MainView: View {
    
    init() {
        // Change the font size of the title bar.
        UINavigationBar.appearance().titleTextAttributes = [.font: UIFont.systemFont(ofSize: 26)]
        // Change the background color of the title bar.
        UINavigationBar.appearance().barTintColor = UIColor.white
        // Change the background color behind the title bar.
        UINavigationBar.appearance().backgroundColor = UIColor.white
        // Change the background color of the tab bar.
        UITabBar.appearance().barTintColor = UIColor.white
        // Change the background color behind the tab bar.
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView (.vertical, showsIndicators: false) {
                    // This part is implemented in the next section.
                    TimelineView(timelines: timelines)
                }
                    // Specify the title and left and right icons.
                    .navigationBarTitle(Text("🐥"), displayMode: .inline)
                    .navigationBarItems(
                        leading: Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 1))
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())

                        .padding(.bottom, 10)
                    )
                }
                .tabItem {
                    IconView(systemName: "house")
                }
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                }
            IconView(systemName: "bell")
                .tabItem {
                    IconView(systemName: "bell")
                }
            IconView(systemName: "envelope")
                .tabItem {
                    IconView(systemName: "envelope")
                }
        }
        // Change the color of the selected icon to blue.
        .accentColor(.blue)
    }
}

// Consistent Icon Formats
struct IconView: View {
    var systemName: String

    var body: some View {
        Image(systemName: systemName)
            .font(.title)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
