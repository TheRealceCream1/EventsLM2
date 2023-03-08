//
//  Event.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import Foundation

class Event : ObservableObject, Encodable{
    var id : String = ""
    
    var date : String
    var time : String
    var location : String
    var price: String
    var name: String
    
//    // Computed property of type dictionary that references our key pairs from our realtime database
//    var dictionary: [String: Any]{
//        ["date" : date,
//         "name" : name,
//         "location" : location,
//         "price" : price,
//         "time" : time
//        ]
//    }
//
//
    
    init(date : String = "", time : String = "", location : String = "", price : String = "", name : String = ""){
        self.date = date
        self.time = time
        self.location = location
        self.price = price
        self.name = name
    }
}
extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
