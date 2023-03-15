//
//  Path.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/15/23.
//

import Foundation

class Path : ObservableObject {
    var path : [String] = ["schedule", "Basketball"]
    
    func addPath (aPath : String )  {
        path.append(aPath)
    }
    
    func remPath () {
        path.popLast()
    }
    
    func fPath() -> String{
        return path.joined(separator: "/")
    }
        
}
