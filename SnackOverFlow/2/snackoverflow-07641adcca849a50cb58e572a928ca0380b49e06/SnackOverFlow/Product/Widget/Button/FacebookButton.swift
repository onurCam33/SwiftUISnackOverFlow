//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by Veli Bacik on 15.09.2022.
//

import SwiftUI

struct FacebokButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }
                .tint(.white)
                .font(.title2)
                .padding(.all,PagePadding.All.normal.rawValue)

        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.deepSkyBlue)
            .cornerRadius(RadiusItems.radius)
    }
}

struct FacebokButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebokButton(onTap: {})
    }
}
