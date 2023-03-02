//
//  InputView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 3/2/23.
//

import SwiftUI
import FirebaseDatabase

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        
        ref.child("results/team/baseball/game/name").setValue("Haverford vs Lower Merion")
    }
}


//struct InputView: View {
//    var body: some View {
//
//    }
//}
//
//struct InputView_Previews: PreviewProvider {
//    static var previews: some View {
//        InputView()
//    }
//}
