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
    
    
    
    init(date : String = "", time : String = "", location : String = ""){
        self.date = date
        self.time = time
        self.location = location
    }
    
    
    
}
