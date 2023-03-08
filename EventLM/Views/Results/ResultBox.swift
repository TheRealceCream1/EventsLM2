//
//  ResultBox.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/8/23.
//

import SwiftUI

struct ResultBox: View {
    var body: some View {

        ZStack {
            Rectangle()
                .frame(width: ((UIScreen.main.bounds.width/2)-4), height: UIScreen.main.bounds.height/4)
                .foregroundColor(.black.opacity(0.05))
                .border(Color.black, width: 1)

            VStack(spacing: 5) {
                Text("March 8, 2023")
                    .foregroundColor(.gray)
                    .font(Constants.SmallFont)
                    .frame(width: (UIScreen.main.bounds.width/2)-UIScreen.main.bounds.width/15, alignment: .leading)
                Text("Basketball")
                    .foregroundColor(.Maroon)
                    .font(Constants.SmallFont)
                HStack {
                    Image("LMLogo")
                        .resizable()
                        .frame(width: (UIScreen.main.bounds.width/10), height: (UIScreen.main.bounds.width/10))
                    Text("Team")
                        .foregroundColor(.black)
                        .font(Constants.GameScoreFont)
                    Text("46")
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

                    Text("48")
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
        ResultBox()
    }

}
