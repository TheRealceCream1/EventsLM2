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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(ViewState.authentication))
    }
}
