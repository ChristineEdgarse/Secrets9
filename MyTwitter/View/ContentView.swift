//
//  ContentView.swift
//  MyTwitter
//
//  Created by Administrator on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    // Preserves the horizontal offset of the screen in the xOffset variable.
    @State private var xOffset = CGFloat.zero
    @State private var defaultOffset = CGFloat.zero
    
    var body: some View {
        // Use GeometoryReader to get the screen size
        GeometryReader { geometry in
            
                HStack(spacing: 0) {
                    SideMenuView()
                        // Width should be 70% of the screen size
                        .frame(width: geometry.size.width * 0.7)
                    Divider()
                    MainView()
                        // Width should be 100% of the screen size
                        .frame(width: geometry.size.width)
                }
                // First, minus the value of the screen offset by the slide menu.
                .onAppear(perform: {
                    self.xOffset = geometry.size.width * -0.7
                    self.defaultOffset = self.xOffset
                })
                .offset(x: self.xOffset)
                // Specify the screen size.
                .frame(width: geometry.size.width, alignment: .leading)
                // Set the animation of the slide.
                .animation(.default)
                // Detects gesture-related events.
                .gesture(
                    // Detects events related to dragging, i.e., sliding and swiping
                    DragGesture()
                        // Implements the movement when a swipe is detected
                        .onChanged{ value in
                            // Dynamically changes the offset value when the swipe distance is greater than 5
                            // Exceeding the threshold (5 in this case) will give you real-time movement
                            if (self.xOffset != .zero && value.translation.width > 5) {
                                self.xOffset = self.defaultOffset + value.translation.width
                            }
                        }
                        // Implement the movement when the swipe is finished
                        .onEnded { value in
                            // If the swipe distance to the right is greater than 5, set the offset to 0
                            // i.e. display the menu
                            // Otherwise, set the offset to the slide menu
                            // i.e. hide the slide menu
                            if (value.translation.width > 5) {
                                self.xOffset = .zero
                            } else {
                                self.xOffset = self.defaultOffset
                            }
                        }
                    )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
