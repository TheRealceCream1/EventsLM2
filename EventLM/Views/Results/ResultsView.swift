//
//  ResultsView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth

struct ResultsView: View {
    @EnvironmentObject var path : Path
    @Binding var viewState : ViewState
    @State private var events: [(id: UUID, key: String, value : AnyObject)] = []
    
    
    
    var body: some View {
        ZStack{
            ScrollView{
                
                ForEach(events, id: \.id) {i in
                    if let event = i.value as? [String: String]{
                        VStack{
                            ResultBox(eventData : event)
                            
                        }
                    }
                }
            }
            .navigationBarTitle("LM Schedule")
        }
        .task{
            //CHANGE FIREBASE PATH
            path.remAllPath()
            path.addPath(aPath: "results")
            path.addPath(aPath: "soccer")
            //GETS DATA
            getData.getSortedResults(path: path) { sortedEvents in
                DispatchQueue.main.async {
                    events = sortedEvents
                }
            }
        }
        
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(viewState: Binding.constant(ViewState.authentication))
            .environmentObject(Path())
        
    }
}
