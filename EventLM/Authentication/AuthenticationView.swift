//
//  AuthenticationView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/1/23.
//

import SwiftUI

struct AuthenticationView: View {
    @Binding var viewState : ViewState
    
    var body: some View {
        ZStack{
            
            VStack{
                Image("LMLogo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(3.0)
                    .offset(y: -70)
                    .padding()
                    .padding()
                
                Button{
                    viewState = .signup
                }label:{
                    ZStack{
                        Rectangle()
                            .cornerRadius(30)
                            .frame(width:150,height:50)
                            .foregroundColor(.Maroon)
                            .ignoresSafeArea()
                            .opacity(0.3)
                        Text("Sign Up")
                            .font(Constants.buttonFont)
                            .foregroundColor(Color.black)
                    }
                }
                
               
                Button{
                    viewState = .login
                }label:{
                    ZStack{
                        Rectangle()
                            .cornerRadius(30)
                            .frame(width:150,height:50)
                            .foregroundColor(.Maroon)
                            .ignoresSafeArea()
                            .opacity(0.3)
                        Text("Login")
                            .font(Constants.buttonFont)
                            .foregroundColor(Color.black)
                    }
                }
                .padding()
            }
            
        }
        .padding()
    }
    
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(viewState: Binding.constant(ViewState.authentication))
    }
}
