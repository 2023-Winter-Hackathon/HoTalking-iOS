//
//  ContentView.swift
//  Hackathonproject
//
//  Created by 조근호 on 2023/02/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShownSheet = false
    
    var body: some View {
        VStack {
            Button {
                self.isShownSheet.toggle()
            } label: {
                Text("Show sheet")
            }
            .sheet(isPresented: $isShownSheet) {
                WriteView()
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
