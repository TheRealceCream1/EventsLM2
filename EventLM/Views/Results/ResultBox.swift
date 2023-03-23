//
//  ResultBox.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/8/23.
//

import SwiftUI

struct ResultBox: View {
    @State var eventData: [String : String]
    @EnvironmentObject var path : Path

    var body: some View {

        ZStack {
            Rectangle()
                .frame(width: ((UIScreen.main.bounds.width/2)-4), height: UIScreen.main.bounds.height/4)
                .foregroundColor(.accentColor.opacity(0.2))
                .border(Color.black, width: 1)

            VStack(spacing: 5) {
                Text(eventData["date"] ?? "?")
                    .foregroundColor(.gray)
                    .font(Constants.SmallFont)
                    .frame(width: (UIScreen.main.bounds.width/2)-UIScreen.main.bounds.width/15, alignment: .leading)
                Text(path.lastSport)
                    .foregroundColor(.Maroon)
                    .font(Constants.SmallFont)
                HStack {
                    Image("LMLogo")
                        .resizable()
                        .frame(width: (UIScreen.main.bounds.width/10), height: (UIScreen.main.bounds.width/10))
                    Text("Team")
                        .foregroundColor(.black)
                        .font(Constants.GameScoreFont)
                    Text(eventData["scorelm"] ?? "?")
                        .foregroundColor(.black)
                        .font(Constants.GameScoreFont)
                }
                HStack {
                    Image("badLogo")
                        .resizable()
                        .opacity(0.8)
                        .frame(width: (UIScreen.main.bounds.width/10), height: (UIScreen.main.bounds.width/10))
                    Text("Team")
                        .foregroundColor(.black.opacity(0.7))
                        .font(Constants.GameScoreFont)
                    Text(eventData["scoreOpponent"] ?? "?")
                        .foregroundColor(.black.opacity(0.7))
                        .font(Constants.GameScoreFont)
                }
                Text("Final")
                    .foregroundColor(.black)
                    .font(Constants.SmallFont)
            }


        }

    }
}



struct ResultBox_Previews: PreviewProvider {

    static var previews: some View {
        ResultBox(eventData : [:])
            .environmentObject(Path())

    }

}
