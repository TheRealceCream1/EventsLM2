//
//  FetchData.swift
//  JSON
//
//  Created by Owen Bress (student LM) on 12/13/22.
//

import Foundation
import UserNotifications

class FetchData: ObservableObject{
    
    @Published var response: Response = Response()
    
    func getData() async{
        let URLString = "https://eventlm-default-rtdb.firebaseio.com/"
        guard let url = URL(string: URLString) else {return}
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let r = try JSONDecoder().decode(Response.self, from: data)
            self.response = r
        }catch{
            print(error)
            
        }

    }
    
}

//MAKE VARIABLES LOWERCASE IN FIREBASE OR NO WORK!!!!!!

struct Response: Codable{
    var results: [Results] = []
    var schedule: [Schedule] = []
}

//RESULTS PATH
struct Results: Codable{
    var teams: [Team] = []
}


struct Team: Codable{
    var baseball : Baseball = Baseball()
}

struct Baseball: Codable{
    var game : Game = Game()
}

struct Game : Codable{
    //CHANGE NAME OF +Info variable to remove + symbol
    var eInfo : String = ""
    var date : String = "3/12/23"
    var location : String = "Penn Wynne Park"
    
    //true = team1 won, false = team2 won
    
    //var winner : Bool
    
}

struct Score: Codable{
    //CHANGE TEAMS TO INTS
    var team1 : Int = 5
    var team2 : Int = 3
}

//SCHEDULE PATH
struct Schedule: Codable{
    var baseball : Baseball = Baseball()
}
