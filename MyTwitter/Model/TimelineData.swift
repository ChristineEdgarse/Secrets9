//
//  TimelineData.swift
//  MyTwitter
//
//  Created by Administrator on 21/03/23.
//

import Foundation

struct Timeline {
    let id: Int
    let name: String
    let image: String
    let post: String
    let post_image: String
}

let timelines: [Timeline] = [
    Timeline(id: 0, name: "Sandhya", image: "person.crop.circle.badge.minus.fill", post: "Beautiful flowers on the rise", post_image: "PostImageOne"),
    Timeline(id: 1, name: "Prakash", image: "person.crop.circle.badge.minus.fill", post: "Visited falls last week @jogFalls", post_image: "PostImageTwo"),
    Timeline(id: 2, name: "John", image: "person.crop.circle.badge.minus.fill", post: "Visited falls last week with @Prakash", post_image: "PostImageThree"),
    Timeline(id: 3, name: "Raj", image: "person.crop.circle.badge.minus.fill", post: "Jungle Trip with friends", post_image: "PostImageFour"),
    Timeline(id: 4, name: "Walter", image: "person.crop.circle.badge.minus.fill", post: "Weekend trip", post_image: "PostImageFive")
]
