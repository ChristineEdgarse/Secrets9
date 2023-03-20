//
//  TimelineViewBottom.swift
//  MyTwitter
//
//  Created by Administrator on 21/03/23.
//

import SwiftUI

struct TimelineViewBottom : View {
    
    var body : some View{
        
        HStack(spacing : 50){
            
            Button(action: {
                
            }) {
                
                Image("Comments").resizable().frame(width: 20, height: 20)
                
            }.foregroundColor(.gray)
            
            Button(action: {
                
            }) {
                
                Image("Retweet").resizable().frame(width: 20, height: 20)
                
            }.foregroundColor(.gray)
            
            Button(action: {
                
            }) {
                
                Image("love").resizable().frame(width: 20, height: 17)
                
            }.foregroundColor(.gray)
            
            Button(action: {
                
            }) {
                
                Image("upload").resizable().frame(width: 20, height: 20)
                
            }.foregroundColor(.gray)
        }
    }
}

