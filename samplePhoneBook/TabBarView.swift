//
//  ContentView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/02/28.
//

import SwiftUI

struct TabBarView: View {

    init() {
        UITabBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
        TabView {
            ProfileListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("プロフィール一覧")
                    }
                }
            
            // View2() for profile register
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
