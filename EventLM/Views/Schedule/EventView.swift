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
    @State private var eventData: [String: AnyObject] = [:]
    @EnvironmentObject var path : Path
    @EnvironmentObject var isData : getData

    var formattedEventData: String {
            eventData.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }
    var body: some View {
        
        
        // Your view content
        Button{
            path.remPath()
        } label: {
            Text("Press")
        }
        
        Button{
            path.addPath(aPath: "Swimming")
        } label : {
            Text("Touch Me")
        }
        
        
        Button(action: {
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
        }) {
            Text("Read Data")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        
        Text(formattedEventData)
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
            .environmentObject(getData())

    }
}
