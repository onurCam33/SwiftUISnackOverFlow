//
//  GoogleButton.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

struct GoogleButton: View {
    var onTop : () -> Void
    var body: some View {
        Button { onTop()
            
        }  label: {
            HStack {
                Image(IconsItem.Social.google.rawValue)
                Text(StringItems.googleLogin.rawValue)
                Spacer()
            }.tint(.black)
                .font(.title2)
                .padding(.all,PagePadding.All.normal.rawValue)
               
              
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.white)
            .cornerRadius(RadiusItems.radius)
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton(onTop:{})
    }
}
