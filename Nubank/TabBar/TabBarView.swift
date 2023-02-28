//
//  TabBarView.swift
//  Nubank
//
//  Created by Luiz Franco on 27/02/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Text("")
                .tabItem {
                    Image(systemName: "arrow.up.arrow.down")
                }
            Text("")
                .tabItem {
                    Image(systemName: "dollarsign")
                }
            Text("")
                .tabItem {
                    Image(systemName: "bag")
                }
            Text("")
                .tabItem {
                    Image(systemName: "sportscourt")
                }
        } .accentColor(Color.purple)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
