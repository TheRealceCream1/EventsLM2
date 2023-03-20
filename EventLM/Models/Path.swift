//
//  Path.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/15/23.
//

import Foundation

class Path : ObservableObject {
    @Published var pathChanged = true
    @Published var path : [String] = ["schedule"]
    
    func addPath (aPath : String )  {
        path.append(aPath)
        pathChanged = !pathChanged
    }
    
    func remPath () {
        path.popLast()
        pathChanged = !pathChanged
    }
    func remAllPath () {
        path.removeAll()
        
    }
    
    func fPath() -> String{
        return path.joined(separator: "/")
    }
        
}
