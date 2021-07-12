//
//  Responsive.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 10/07/21.
//

import Foundation
import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
    static func getWidthPR(width:Double) -> CGFloat{
        return CGFloat((Double(UIScreen.main.bounds.size.width) *   (width/100)))
    }
    static func getHeigthPR(height:Double) -> CGFloat{
        return CGFloat(Double(UIScreen.main.bounds.size.height) *   (height/100))
    }
    static  func spR( percent:Double)-> CGFloat {
        let xp:Double
        if (UIDevice.current.orientation.isLandscape) {
            xp = (Double(screenHeight) / 3) * percent / 100
        } else {
            xp = (Double(screenWidth) / 3) * percent / 100
        }
        let  x = screenHeight / screenWidth
        return CGFloat(x <= 1.8 ? xp - xp * 0.08 : xp)
      }

}
