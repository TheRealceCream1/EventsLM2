//
//  ResultsView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth

struct ResultsView: View {
    
    @Binding var viewState : ViewState
    var body: some View {
        ScrollView {
            Color.white
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    ResultBox()
                    ResultBox()
                }
                
                HStack(spacing: 0) {
                    ResultBox()
                    ResultBox()
                }
            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(viewState: Binding.constant(ViewState.authentication))
    }
}
