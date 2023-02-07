//
//  Tab.swift
//  2023winterHKT
//
//  Created by Agiss on 2023/02/07.
//

import SwiftUI

enum Tab {
    case home
    case profile
    
    //associate value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .profile: return Text("profile")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .profile: return Image(systemName: "person.fill")
        }
    }
}
