//
//  SettingsView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
//

import SwiftUI

struct SettingsView: View {
    @Binding var viewState : ViewState
    @EnvironmentObject var preferences : Preferences
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Display")){
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Dark Mode")
                    })
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Use system settings")
                    })
                }.listRowBackground(Color.gray.opacity(0.1))
                Section(header: Text("Schedule Filters")){
                    Toggle(isOn: $preferences.gender.0,
                           label: {
                        Text("Boys")
                    })
                    Toggle(isOn: $preferences.gender.1,
                           label: {
                        Text("Girls")
                    })
                    Section(header: Text("Sports")){
                        Toggle(isOn: $preferences.sports[0],
                               label: {
                            Text("Soccer")
                        })
                        Toggle(isOn: $preferences.sports[1],
                               label: {
                            Text("Basketball")
                        })
                        Toggle(isOn: $preferences.sports[2],
                               label: {
                            Text("Football")
                        })
                        Toggle(isOn: $preferences.sports[3],
                               label: {
                            Text("Lacrosse")
                        })
                        Toggle(isOn: $preferences.sports[4],
                               label: {
                            Text("Swimming")
                        })
                        Toggle(isOn: $preferences.sports[5],
                               label: {
                            Text("Volleyball")
                            
                        })
                        Toggle(isOn: $preferences.sports[6],
                               label: {
                            Text("Wrestling")
                        })
                        Toggle(isOn: $preferences.sports[7],
                               label: {
                            Text("Field Hockey")
                        })
                    }.listRowBackground(Color.gray.opacity(0.2))
                        .toggleStyle(.switch)
                    
                    
                    
                }
                Section(header: Text("Results Filters")){
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Boys")
                    })
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Girls")
                    })
                }
                
                
                
            }.navigationTitle("Settings")
                .navigationBarItems(leading: Text(""))
        }
        
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewState: Binding.constant(ViewState.authentication))
            .environmentObject(Preferences())
        
    }
}
