//
//  Event.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import Foundation

class Event : ObservableObject{
    @Published var id : UUID = UUID()
    
    @Published var date : String
    @Published var time : String
    @Published var location : String
    @Published var price: String
    @Published var name: String
    
    // Computed property of type dictionary that references our key pairs from our realtime database
    var dictionary: [String: Any]{
        ["date" : date,
         "name" : name,
         "location" : location,
         "price" : price,
         "time" : time
        ]
    }
    
    
    init(date : String = "", time : String = "", location : String = "", price : String = "", name : String = ""){
        self.date = date
        self.time = time
        self.location = location
        self.price = price
        self.name = name
    }
    
    
    
    
}
