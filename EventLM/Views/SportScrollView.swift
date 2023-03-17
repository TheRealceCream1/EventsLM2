//
//  SportScrollView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/17/23.
//

import SwiftUI

struct SportScrollView: View {
    
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
                            print("SOCCER")
                        }
                    Text("Basketball")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            print("BASKETBALL")
                        }
                    Text("Football")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            print("FOOTBALL")
                        }
                    
                    Text("Lacrosse")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            print("LACROSSE")
                        }
                    Text("Swimming")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            print("SWIMMING")
                        }
                    Text("Volleyball")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon)
                        .onTapGesture {
                            print("VOLLEYBALL")
                        }
                    Text("Wrestling")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon).onTapGesture {
                            print("WRESTLING")
                        }
                    Text("Field Hockey")
                        .font(Constants.SportFont)
                        .foregroundColor(.Maroon).onTapGesture {
                            print("FIELD HOCKEY")
                            
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
        
    }
    
}
