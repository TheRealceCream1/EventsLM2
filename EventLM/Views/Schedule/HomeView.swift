//
//  HomeView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI

struct HomeView: View {

    @Binding var viewState : ViewState
    @EnvironmentObject var path : Path
    @State var events: [(id: UUID, key: String, value: AnyObject)] = []
    
    var body: some View {
        ZStack{
            NavigationView{
                List{
                    ForEach(events, id: \.id) { e in
                        if let event = e.value as? [String: String]{
                            NavigationLink(destination: EventView(eventData : event), label: {
                                HStack{
                                    Image("LMLogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 70)
                                        .cornerRadius(4)
                                        .padding(.vertical, 5)
                                    
                                    VStack(alignment: .leading, spacing: 5){
                                        Text(event["name"] ?? "?")
                                            .fontWeight(.semibold)
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.75)
                                        
                                        
                                        Text(event["date"] ?? "?")
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                                }
                            })
                        }

                    }
                }
                .navigationBarTitle("LM Schedule")
            }
        }
        .task {
            
            path.remAllPath()
            path.addPath(aPath: "schedule")
            
            //GATHERS ALL EVENTS UNDER EACH SPORTS IN SCHEDULE AND SORTS BY DATE
            getData.getSortedScheduled(path: path) { sortedEvents in
                DispatchQueue.main.async {
                    events = sortedEvents
                }
            }
            
        }
    }
    
    
}

//CONVERT DICTIONARY TO TUPLE


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(ViewState.authentication))
            .environmentObject(Path())
        
    }
}
