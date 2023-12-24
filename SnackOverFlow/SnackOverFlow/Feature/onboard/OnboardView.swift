//
//  OnboardView.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 24.12.2023.
//

import SwiftUI

struct OnboardView: View {
    @ State private var currentIndex : Int  = 0
    
    private func count() -> Int {
        OnBoardModel.items.count-1
    }
    var body: some View {
        GeometryReader { geometry in
            VStack{
                TabView(selection: $currentIndex, content: {
                    ForEach( (0...count()), id: \.self ) {
                        value in
                     
                        SliderCard(height: FontSizes.largeTitle, imageHeight: geometry.dh(height: 0.45), model: OnBoardModel.items[value] )
                    }
                })
                Spacer()
                HStack {
                    ForEach((0...count()) , id: \.self ,content: {
                        index in
                        if(index==currentIndex){
                            IndicatorRectangle(width: geometry.dw(width: 0.07))
                        }else {
                            IndicatorRectangle(width: geometry.dw(width: 0.03))
                        }
                        
                    } )
                }.frame(height: 10)
                NormalButton(onTop: {})
            }
        }
    }
}

private struct SliderCard : View {
    var height : Double
    var imageHeight : Double
    let model : OnBoardModel
    var body: some View {
    VStack {
        Image(model.imageName)
        Text(model.description)
            .font(.system(size: height,weight: .semibold))
            .multilineTextAlignment(.center)
            .frame(alignment: .center)
            .foregroundColor(Color.peach)
            
        }
    }
}

private struct IndicatorRectangle : View {
    var width : Double
    
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(width: width)
            .cornerRadius(Radius.minRadius)
            
             
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

