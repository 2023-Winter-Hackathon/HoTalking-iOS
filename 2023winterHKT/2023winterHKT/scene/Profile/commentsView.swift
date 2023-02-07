//
//  commentsView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct commentsView: View {
    var body: some View{
        
        List {
            Section {
                Text("1")
                Text("2")
                Text("3")
            }
            
            Section {
                Text("1")
                Text("2")
                Text("3")
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Other")
        .toolbar {
            NavigationLink(destination: Text("Destination"), label: {
                Image(systemName: "gear")
            })
        }
    }
}

