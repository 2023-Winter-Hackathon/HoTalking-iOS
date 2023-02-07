//
//  textFieldView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct textFieldView: View {
    var body: some View{
        
        ScrollView{
            VStack(alignment: .leading, spacing: 15) {
                // Profile Image
                HStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text("1-1 천수인")
                }
                
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(15)
                    .clipped()
                Text("제주도 꿀팁🍯")
                HStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text("1-1 천수인")
                }
                
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(15)
                    .clipped()
                Text("제주도 꿀팁🍯")
                
                HStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text("1-1 천수인")
                }
                
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(15)
                    .clipped()
                Text("제주도 꿀팁🍯")
                
            }
            .padding()
        }

    }
}

