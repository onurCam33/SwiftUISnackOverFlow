//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

struct FacebookButton : View {
    var onTop : () -> Void
    var body : some View {
        Button { onTop()
            
        }  label: {
            HStack {
                Image(IconsItem.Social.facebook.rawValue)
                Text(StringItems.FacebookLogin.rawValue)
                Spacer()
            }.tint(.white)
                .font(.title2)
                .padding(.all,PagePadding.All.normal.rawValue)
              
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.deepSkyBlue)
            .cornerRadius(RadiusItems.radius)
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTop: {})
    }
}
