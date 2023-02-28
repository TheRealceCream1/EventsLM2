//
//  Event.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import Foundation

class Result : ObservableObject{
    @Published var id : UUID = UUID()
    
    @Published var date : String
    @Published var score : String
    @Published var team1 : Team
    @Published var team2 : Team
    
    
    
    init(date : String = "", score : String = ""){
        self.date = date
        self.score = score
    }
 
}
