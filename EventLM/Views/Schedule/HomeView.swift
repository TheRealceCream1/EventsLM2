//
//  HomeView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI

struct HomeView: View {
    var formattedEventData: String {
            eventData.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }
    @State private var eventData: [String: AnyObject] = [:]
    @Binding var viewState : ViewState
    @EnvironmentObject var path : Path
    @EnvironmentObject var isData : getData
    
    var body: some View {
 
        NavigationView{
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/){ item in
                NavigationLink(destination: EventView(eventData : self.eventData), label: {
                    HStack{
                        Image("LMLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 5)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(formattedEventData)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.75)
                            
                            
                            Text("March 3, 2023")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                })
            }
            .navigationBarTitle("LM Schedule")
        }
        .task{
            path.remAllPath()
            path.addPath(aPath: "schedule")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(ViewState.authentication))
            .environmentObject(Path())
            .environmentObject(getData())
        
    }
}
