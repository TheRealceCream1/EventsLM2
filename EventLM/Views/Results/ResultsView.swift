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
    @EnvironmentObject var isData : getData
    @State private var eventData: [String: AnyObject] = [:]
    var formattedEventData: String {
            eventData.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }

    var body: some View {
        ScrollView {
            Color.white
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    ResultBox(eventData : self.eventData)
                    ResultBox(eventData : self.eventData)
                }
                
                HStack(spacing: 0) {
                    ResultBox(eventData : self.eventData)
                    ResultBox(eventData : self.eventData)
                }
                
                Text(formattedEventData)
            }
        }
        .task{
            //CHANGE FIREBASE PATH
            path.remAllPath()
            path.addPath(aPath: "results")
            //GETS DATA
            isData.readData(path: path.fPath()) { result in
                switch result {
                case .success(let snapshot):
                    if let data = snapshot.value as? [String: AnyObject] {
                        eventData = data
                        print("Data retrieved successfully")
                    } else {
                        print("No data found at the specified path")
                    }
                case .failure(let error):
                    print("Error retrieving data: \(error.localizedDescription)")
                    
                }
            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(viewState: Binding.constant(ViewState.authentication))
            .environmentObject(Path())
            .environmentObject(getData())

    }
}
