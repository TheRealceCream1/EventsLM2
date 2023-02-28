//
//  ContentView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var viewState: ViewState = .home
    
    var body: some View {
        
            TabView{
                
            }.accentColor(Color.black)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
