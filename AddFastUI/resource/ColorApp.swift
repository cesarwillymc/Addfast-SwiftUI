//
//  Color.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 11/07/21.
//

import SwiftUI

struct ColorApp{

    var scheme:ColorScheme
    
    func getBackgroundColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.black : Color.white
    }
    func getTextColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.white : Color.black
    }
    func getUnTextColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.black : Color.white
    }
    func getSubBackgroundColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.gray : Color.white
    }
    func getSelectColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.gray : Color.white
    }
    func getUnSelectColor() -> Color {
        let dark = scheme == .dark
        return  dark ? Color.white : Color.gray
    }
}
