//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 24.12.2023.
//

import SwiftUI

struct NormalButton: View {
    var onTop : () -> Void
    var body: some View {
       
        Button { onTop() }
               label: {
            HStack{
                Spacer()
             Text("Get Started")
                Spacer()
            }  .tint(.white)
                       .font(.system(size: FontSizes.headLine,weight: .semibold))
                       .padding(.all,PagePadding.All.normal.rawValue)
               }
               .background(Color.peach)
               .controlSize(.large)
               .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
               .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
             
        
        
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTop: {})
    }
}
