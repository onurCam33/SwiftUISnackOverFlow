//
//  Welcome.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

 enum StringItems : String {
    case FacebookLogin = "Sign in with Facebook"
     case googleLogin = "Sign in Google"
     case appleLogin = "Sign in Apple "
}

struct Welcome: View {
    var body: some View {
        ZStack{
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.4)
            BodyView()
        }
      
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome().ignoresSafeArea(.all)
    }
}

struct BodyView : View {
    var body: some View {
        GeometryReader { geometry in
                        VStack {
                            Spacer()
            Image(Icons.appLogo.rawValue)
                            Spacer()
            FacebookButton(onTop: {}).padding(Edge.Set.top, 40)
            GoogleButton(onTop: {})
            AppleButton(onTop: {})
                            Divider().background(Color.peach)
                                .frame(width: geometry.dw(width: 0.7),height: geometry.dh(height: 2)).padding(PagePadding.All.normal.rawValue)
                            Spacer().frame(height: geometry.dh(height: 0.1))
            
        }.padding(.paddingAll)
        }
    }
}






