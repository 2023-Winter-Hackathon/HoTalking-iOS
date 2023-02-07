//
//  SplashView.swift
//  Hackathonproject
//
//  Created by 조근호 on 2023/02/07.
//

import SwiftUI

struct SplashscreenView: View {
    @State var isActive: Bool = false
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color("SplashiColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Image("SplashImage")
                    Text("HoTalking")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashscreenView_prview: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
