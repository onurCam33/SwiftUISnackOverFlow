//
//  Welcome.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

private enum StringItems : String {
    case FacebookLogin = "Sign in with Facebook"
}

struct Welcome: View {
    var body: some View {
        ZStack{
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            VStack {
                Image(Icons.appLogo.rawValue)
                FacebookButton(onTop: {}).padding(Edge.Set.top, 40)
                       
            }.padding(.paddingAll)
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}


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
                .background(Color.deepSkyBlue)
        }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
}



