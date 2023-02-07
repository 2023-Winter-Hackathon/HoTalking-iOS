//
//  ProfileView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct ProfileView: View {
    @State var isClick: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .cornerRadius(30)
                Text("1학년 1반 16번 \n천수인")
                    .font(.system(size: 30, weight: .bold))
                    .padding()
            }
            .padding()
            Spacer()
            Image("line")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            
            
            HStack(spacing: 50) {
                Button(action: {isClick = false}, label: {
                    Text("글")
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                })
                
                Button(action: {isClick = true}, label: {
                    Text("내 댓글")
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                })
            }
            
            
            if(isClick) {
                commentsView()
            }else {
                textFieldView()
            }
            Spacer()
        }
        
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
