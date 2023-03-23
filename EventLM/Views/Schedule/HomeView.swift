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
            ScrollView{
                //                List{
                ForEach(events, id: \.id) { e in
                    if let event = e.value as? [String: String]{
                        //                            NavigationLink(destination: EventView(eventData : event), label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.accentColor.opacity(0.2))
                                .cornerRadius(30)
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5.5)
                                .onTapGesture {
                                    print("clicked")
                                }
                            HStack {
                                VStack(spacing: 5){
                                    HStack(){
                                        Image("LMLogo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: UIScreen.main.bounds.height/15)
                                            .cornerRadius(4)
                                            .padding(.vertical, 5)
                                        
                                        VStack(alignment: .leading, spacing: 5){
                                            Text(event["team1"] ?? "?")
                                                .fontWeight(.semibold)
                                                .lineLimit(2)
                                                .minimumScaleFactor(0.75)
                                        }
                                    }
                                    HStack(){
                                        Image("badLogo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: UIScreen.main.bounds.height/15)
                                            .cornerRadius(4)
                                            .padding(.vertical, 5)
                                        
                                        VStack(alignment: .leading, spacing: 5){
                                            Text(event["team2"] ?? "?")
                                                .fontWeight(.semibold)
                                                .lineLimit(2)
                                                .minimumScaleFactor(0.75)
                                            
                                        }
                                    }
                                    
                                }
                                Rectangle()
                                    .frame(width: 2, height: UIScreen.main.bounds.height/7)
                                    .foregroundColor(.black.opacity(0.4))
                                VStack {
                                    Text("Date: ")
                                        .font(Constants.SmallFont)
                                        .foregroundColor(.accentColor)
                                    Text(event["date"] ?? "?")
                                        .font(Constants.SmallFont)
                                        .foregroundColor(.secondary)
                                    
                                }
                            }
                        }
                        
                    }
                    
                }
                //                }
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
