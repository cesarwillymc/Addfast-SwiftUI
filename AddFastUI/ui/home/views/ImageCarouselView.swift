//
//  OffertItem.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 10/07/21.
//

import SwiftUI

struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var content: Content
    
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geometry in
            // 1
            ZStack(alignment: .bottom) {
                HStack(spacing: 0) {
                    self.content
                }.frame(width: UIScreen.screenWidth, height: UIScreen.getHeigthPR(height: 30), alignment: .leading)
                
                .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
                .animation(.spring())
                
                .onReceive(self.timer) { _ in
                    self.currentIndex = (self.currentIndex + 1) % (self.numberOfImages == 0 ? 1 : self.numberOfImages)
                }
                
                // 2
                HStack(spacing: 3) {
                    // 3
                    ForEach(0..<self.numberOfImages, id: \.self) { index in
                        // 4
                        Circle()
                            .frame(width: index == self.currentIndex ? 10 : 8,
                                   height: index == self.currentIndex ? 10 : 8)
                            .foregroundColor(index == self.currentIndex ? Color.blue : .white)
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            .padding(.bottom, 8)
                            .animation(.spring())
                    }
                }
            }
        }
    }
}

struct ImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        
        // 8
        GeometryReader { geometry in
            ImageCarouselView(numberOfImages: 3) {
                Image("group")
                    .resizable()
                    .scaledToFill()
                    .clipped().frame(width:  UIScreen.screenWidth)
                Image("suitcase")
                    .resizable()
                    .scaledToFill()
                    .clipped().frame(width:  UIScreen.screenWidth)
                Image("user")
                    .resizable()
                    .scaledToFill()
                    .clipped().frame(width:  UIScreen.screenWidth)
            }
        }
    }
}

