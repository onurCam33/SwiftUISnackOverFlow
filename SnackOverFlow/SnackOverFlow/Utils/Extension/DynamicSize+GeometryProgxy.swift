//
//  DynamicSize+GeometryProgxy.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

extension GeometryProxy {
    func dh(height:Double) -> Double {
        return size.height*height
    }
    
    func dw(width:Double) -> Double {
        return size.width*width
    }
}

