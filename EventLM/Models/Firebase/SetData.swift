//
//  SetData.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/7/23.
//

import Foundation
//
//  ResultsView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase

class SetData: ObservableObject{
    private let ref = Database.database().reference()
    
    var dictionary: [String: Any]{
        ["date" : "",
         "name" : "",
         "location" : "",
         "price" : "",
         "time" : ""
        ]
    }
    
    func setTeams(dictionary : [String: Any]){
        self.ref.child("results").setValue(self.dictionary)
        
    }
    func setObject(){
        var generateObject = Event()
        generateObject.id = "Baseball"
        generateObject.date = "3/123/23"
        ref.child("Baseball").setValue(generateObject.toDictionary)
    }
}
