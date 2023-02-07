//
//  TabView.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

struct MainTabView: View{
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            ProfileView()
                .tabItem {
                    Tab.profile.imageItem
                    Tab.profile.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
