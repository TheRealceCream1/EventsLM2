//
//  getData.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/15/23.
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase
//import FirebaseDatabasSwift
// This class is what is actually updating the information in Firebase.
class getData: ObservableObject{
    
    private let ref = Database.database().reference()
    
    func readData(path : String , completion: @escaping (Result<DataSnapshot, Error>) -> Void){
        ref.child(path).observe(.value) { snapshot in
            completion(.success(snapshot))
        } withCancel: { error in
            completion(.failure(error))
        }
    }
}
