//
//  CategoryOptionItem.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 11/07/21.
//

import SwiftUI

struct CategoryOptionItem: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let colorApp = ColorApp(scheme: colorScheme)
        VStack{
            HStack{
                Text("Anuncio").foregroundColor(colorApp.getTextColor()).bold()
                Spacer()
                Text("Ver mas").foregroundColor(colorApp.getTextColor()).bold()
            }.padding(.horizontal, 10.0)
            HStack{
                AdsCardItem()
                AdsCardItem()
                AdsCardItem()
                AdsCardItem()
                AdsCardItem()
            }
        }
    }
}

struct CategoryOptionItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryOptionItem().colorScheme(.light )
    }
}
