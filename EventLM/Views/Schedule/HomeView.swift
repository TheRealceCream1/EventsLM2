//
//  HomeView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var viewState : ViewState
    
    var body: some View {
        
        NavigationView{
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/){ item in
                NavigationLink(destination: EventView(), label: {
                    HStack{
                        Image("LMLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 5)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text("LM vs some bad team that is ")
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.75)
                            
                            
                            Text("March 3, 2023")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                })
            }
            .navigationBarTitle("LM Schedule")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(ViewState.authentication))
    }
}
