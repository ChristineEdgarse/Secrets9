//
//  TimelineView.swift
//  MyTwitter
//
//  Created by Administrator on 20/03/23.
//

import SwiftUI

struct TimelineView: View {
    let timelines: [Timeline]

    var body: some View {
        VStack() {
            ForEach(self.timelines, id: \.id) { (timeline) in
                VStack(spacing: 5) {
                    HStack(alignment: .top) {
                        Image(systemName: timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4))
                            .frame(width: 40, height: 40, alignment: .leading)
                        VStack(alignment: .leading) {
                            HStack {
                                Text(timeline.name)
                                    .fontWeight(.bold)
                                Text("@\(timeline.name)")
                                    .foregroundColor(.gray)
                            }
                            Text(timeline.post)
                            Image(timeline.post_image)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .cornerRadius(20)
                            TimelineViewBottom().offset(x: UIScreen.main.bounds.width / 8)
                        }
                    }
                    .padding(.horizontal, 10)
                    Divider()
                }
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(timelines: timelines)
    }
}
