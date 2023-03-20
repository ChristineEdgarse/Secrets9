//
//  SideMenuView.swift
//  MyTwitter
//
//  Created by Administrator on 20/03/23.
//

import SwiftUI

struct SideMenuView: View {

    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 1))
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            Text("RaviBukka")
                .font(.largeTitle)
            Text("@_ravib")
                .font(.caption)
            Divider()
            ScrollView (.vertical, showsIndicators: true) {
                HStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
                HStack {
                    Image(systemName: "list.dash")
                    Text("Lists")
                }
                HStack {
                    Image(systemName: "text.bubble")
                    Text("Topics")
                }
            }
            Divider()
            Text("Settings and privacy")
        }
        .padding(.horizontal, 20)
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
