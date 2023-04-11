//
//  EventView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
// DETAIL OF HOME VIEW

import SwiftUI
import FirebaseDatabase

struct EventView: View {
    @State var address = "121,Penarth,Rd,,Bala,Cynwyd,,PA,19004"
    @EnvironmentObject var path : Path
    @State var event: [String : String] = [:]
    var body: some View {
        
        ZStack{
            VStack {
                HStack(spacing: UIScreen.main.bounds.width/5) {
                    VStack {
                    Image("LMLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: UIScreen.main.bounds.height/8)
                        .cornerRadius(4)
                        .padding(.vertical, 5)
                    
                        Text(event["team1"] ?? "?")
                            .font(Constants.GameScoreFont)
                            .foregroundColor(.black)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                    }
                    Image("badLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: UIScreen.main.bounds.height/8)
                        .cornerRadius(4)
                        .padding(.vertical, 5)
                }
                Spacer()
                
                
            }
            
            
            
            
        }
        .task {
//
//            path.remAllPath()
//            path.addPath(aPath: "schedule")
//
//            //GATHERS ALL EVENTS UNDER EACH SPORTS IN SCHEDULE AND SORTS BY DATE
//            getData.getSortedScheduled(path: path) { sortedEvents in
//                DispatchQueue.main.async {
//                    events = sortedEvents
//                }
//            }
            
        }
        
    }
    
    
    
    
    
    
    // Trying to figure this out currently
    //            TextField("CLICK ME TO DO LOCATION",text:$address)
    //                .foregroundColor(.red)
    //                .multilineTextAlignment(.center)
    //                .padding()
    //
    //            Button {
    //                UIApplication.shared.openURL(NSURL(string: "http://maps.apple.com/?address=\(address.replacingOccurrences(of: " ", with: ","))")! as URL)
    //
    //            } label:{
    //                Text("CLICK ME TO DO LOCATION")
    //            }
    
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
            .environmentObject(Path())
    }
}
