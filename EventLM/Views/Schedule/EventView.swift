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
    @State var eventData: [String: AnyObject]
    @State var date : String = ""
    @State var time: String = ""
    @State var name: String = ""
    
    var formattedEventData: String {
        eventData.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }
    
    var body: some View {
        
        ZStack{
            ScrollView{
                Text(date)
                Text(time)
            }
            .task{
               
                if let baseballData = eventData["Basketball"] as? [String: AnyObject] {
                    if let date = baseballData["date"] {
                        self.date = date as! String
                    }
                    if let time = baseballData["time"] {
                        self.time = time as! String
                    }
                    
                    if let name = baseballData["name"] {
                        self.name = name as! String
                    }



                }
            }
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
        EventView(eventData : [:])
    }
}
