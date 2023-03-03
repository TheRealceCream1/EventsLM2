//

//  SplashScreenView.swift

//  SplashScreen

//

//  Created by Bennett Schweickert (student LM) on 3/1/23.

//



import SwiftUI



struct SplashScreenView: View {


    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                        VStack {
                            Image("LMLogo")
//                                .frame(width: 100, height: 100)
            //                    .font(.system(size: 80))
//                            Text("Event LM")
//                                .font(.title)
//                                .frame(width: 80, height: 50)
                        }
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration:2)) {
                                self.size = 0.7
                                self.opacity = 1.0
                            }
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                            self.isActive = true
                        }
                    }

        }

    }

}



struct SplashScreenView_Previews: PreviewProvider {

    static var previews: some View {

        SplashScreenView()

    }

}
