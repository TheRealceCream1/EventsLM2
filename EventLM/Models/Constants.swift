//
//  Constants.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import Foundation
import SwiftUI

struct Constants{
    
    static let buttonFont : Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 16) ?? UIFont.systemFont(ofSize: 16))
    static let textFont : Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 20) ?? UIFont.systemFont(ofSize: 20))
    static let SmallFont : Font = Font(UIFont(name: "Bebas Neue", size: UIScreen.main.bounds.width/26) ?? UIFont.systemFont(ofSize: 13))
    static let GameScoreFont : Font = Font(UIFont(name: "Bebas Neue", size: UIScreen.main.bounds.width/12) ?? UIFont.systemFont(ofSize: 30))
    
}

extension Color{
    static let Maroon = Color("Maroon")
}
enum ViewState{
    case authentication, login, signup, home, results, settings
}
