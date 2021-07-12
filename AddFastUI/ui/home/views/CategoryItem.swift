//
//  CategoryItem.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 9/07/21.
//

import SwiftUI

struct CategoryItem: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let colorApp = ColorApp(scheme: colorScheme)
        HStack{
            Image("group").resizable().frame(width: UIScreen.spR(percent: 25), height: UIScreen.spR(percent: 25), alignment: .center)
            Text("Todos")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(colorApp.getUnTextColor())
                .multilineTextAlignment(.center)
                .padding(.leading, 2.0)
                
        }.padding(.horizontal, 10.0).padding(.vertical,5.0).background(colorApp.getUnSelectColor()).clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem().previewLayout(.sizeThatFits).colorScheme(.light )
    }
}
