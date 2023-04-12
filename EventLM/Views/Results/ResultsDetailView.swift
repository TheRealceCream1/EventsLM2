//
//  ResultsDetailView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/29/23.
//

import SwiftUI

struct ResultsDetailView: View {
    @State var eventData: [String : String]
    var body: some View {
        VStack{
            HStack {
            Text("Lower Merion")
                .font(Constants.LargeFont)
                .foregroundColor(.black)
            Text("\(eventData["name"] ?? "?")")
                .font(Constants.LargeFont)
                .foregroundColor(.black)
                
            }
            Spacer()
            // Putting a crown over the winning teams logo
            
            if eventData["scorelm"] ?? "0" > eventData["scoreOpponent"] ?? "0" {
                HStack{
                    VStack{
                        Image("Crown")
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/4), height: (UIScreen.main.bounds.width/4))
                            Image("LMLogo")
                                .resizable()
                                .frame(width: (UIScreen.main.bounds.width/5), height: (UIScreen.main.bounds.width/5))
                            Text(eventData["scorelm"] ?? "?")
                        
                    }
                    VStack{
                        Image(eventData["name"] ?? "badLogo")
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/4), height: (UIScreen.main.bounds.width/4))
                        Text(eventData["scoreOpponent"] ?? "?")
                    }
                }
            }
            else if eventData["scorelm"] ?? "0" < eventData["scoreOpponent"] ?? "0" {
                HStack{
                    VStack{
                        Image("LMLogo")
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/4), height: (UIScreen.main.bounds.width/4))
                        Text(eventData["scorelm"] ?? "?")
                    }
                    VStack{
                        Image("Crown")
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/4), height: (UIScreen.main.bounds.width/4))
                        
                        VStack{
                            Image(eventData["name"] ?? "badLogo")
                                .resizable()
                                .frame(width: (UIScreen.main.bounds.width/3), height: (UIScreen.main.bounds.width/3))
                            Text(eventData["scoreOpponent"] ?? "?")
                        }
                    }
                }
            }
            else{
                Text("Draw")
            }
            Text(eventData["date"] ?? "_")
            
            
        }
    }
}

struct ResultsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsDetailView(eventData : [:])
    }
}
