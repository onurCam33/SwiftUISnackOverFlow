//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by Ptt Mobil Mac 2 on 22.12.2023.
//

import SwiftUI

struct LocaleKeys {
    enum Auth : String {
        case facebook = "SignInFacebook"
        case google = "SignInGoogle"
        case apple = "SignInApple"
        case custom = "SignUpWithEmail"
    }
}
extension String {
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}

