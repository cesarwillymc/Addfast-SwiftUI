//
//  AdsCardItem.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 11/07/21.
//

import SwiftUI

struct AdsCardItem: View {
    @Environment(\.colorScheme) var colorScheme
    let widthData = UIScreen.getWidthPR(width: 45)

    var body: some View {
        let colorApp = ColorApp(scheme: colorScheme)
        VStack(alignment: .leading){
            Image("group").frame(width: widthData, height: UIScreen.getHeigthPR(height: 18)).background(Color.green)
            VStack{
                Text("Doapps buscamos desarrollador movil")
                    .font(.system(size: 11))
                    .foregroundColor(colorApp.getTextColor()).bold()
                Text("Somos una empresa movil que busca apoyar a nuestros talentos. Tenemos mas de 40 se")
                    .font(.system(size: 9)).foregroundColor(colorApp.getTextColor())
            }.padding(5)
        }.frame(width: widthData, height: UIScreen.getHeigthPR(height: 30),alignment: .top).background(colorApp.getSubBackgroundColor())  .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16).stroke(Color.gray, lineWidth: 0.5)
        )
    }
}

struct AdsCardItem_Previews: PreviewProvider {
    static var previews: some View {
        AdsCardItem().previewLayout(.device).colorScheme(.light )
    }
}
