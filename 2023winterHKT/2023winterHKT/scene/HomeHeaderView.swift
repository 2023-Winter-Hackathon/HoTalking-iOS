//
//  HomeHeaderView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var state: Bool
    var body: some View {
        HStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Spacer()
            
            HStack{
                Image("logoText")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.trailing)
                Spacer()
            }
            Button(action: {
                state.toggle()
            }) {
                Image(systemName: "magnifyingglass")
            }
        }
        .padding(.trailing)
    }
}
