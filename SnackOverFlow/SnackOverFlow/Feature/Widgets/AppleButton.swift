//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

struct AppleButton: View {
    var onTop : () -> Void
    var body: some View {
        Button {  onTop()
            
        }
    label: {
            HStack{
                Image(IconsItem.Social.apple.rawValue)
                Text(StringItems.appleLogin.rawValue)
                Spacer()
            }
        }.tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
               
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.black)
            .cornerRadius(RadiusItems.radius)
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton(onTop: {})
    }
}
