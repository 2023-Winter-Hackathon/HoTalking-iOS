//
//  ContentView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct HomeView: View {
    
    let students = ["전체", "선배", "신입생"]
    
    @State var searchState: Bool = false
    @State private var selectedStudent = ""
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: SearchBarView(), isActive: $searchState) {
                    EmptyView()
                }
                HomeHeaderView(state: $searchState)
                ScrollView {
                    LazyVStack {
                        HStack {
                            Spacer()
                            Picker("원하는 페이지를 골라주세요", selection: $selectedStudent) {
                                ForEach(students, id: \.self) {
                                    Text($0)
                                }
                            }
                        }.padding(.leading)
                        Spacer()
                    }
                    ScrollDetailView()
                }
            }
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
