//
//  User.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/23/23.
//

import Foundation
import FirebaseAuth

class Preferences: ObservableObject{
    //1 - Boys
    //2 - Girls
    @Published var gender : (Bool,Bool) = (true,true)
    
    //    1 "soccer":
    //    2 "basketball":
    //    3 "football":
    //    4 lacrosse":
    //    5 "swimming":
    //    6 "volleyball"
    //    7 "wrestling":
    //    8 "field hockey"
    @Published var sports : [Bool] = [
        true,
        true,
        true,
        true,
        true,
        true,
        true,
        true
    ]
}
