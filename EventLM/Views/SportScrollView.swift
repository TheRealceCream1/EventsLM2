//
//  SportScrollView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/17/23.
//

import SwiftUI

struct SportScrollView: View {
    @EnvironmentObject var path : Path

    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            ZStack {
                
                Rectangle()
                    .foregroundColor(.white.opacity(0.0))
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.black.opacity(0.3), .black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                    )
                    .cornerRadius(18)
                    .frame(width: UIScreen.main.bounds.width*2.365, height: UIScreen.main.bounds.height/20)
                
                LazyHStack(spacing: UIScreen.main.bounds.width / 10) {
                    Text("Soccer")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/soccer")
                            print(path.fPath())
                        }
                    Text("Basketball")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/basketball")
                            print(path.fPath())
                        }
                    Text("Football")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/football")
                        }
                    
                    Text("Lacrosse")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/lacrosse")
                        }
                    Text("Swimming")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/swimming")
                        }
                    Text("Volleyball")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/volleyball")
                        }
                    Text("Wrestling")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/wrestling")
                        }
                    Text("Field Hockey")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            path.remPath()
                            path.addPath(aPath: "results/field hockey")
                            
                        }
                    
                    
                    
                }
                
            }
            
        }
        
        .frame(height: UIScreen.main.bounds.height/20)
        
        
        
    }
    
    
    
}





struct SportScrollView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SportScrollView()
            .environmentObject(Path())
        
    }
    
}
