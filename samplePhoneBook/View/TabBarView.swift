//
//  TestView.swift
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
            
            ProfileRegisterView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle.fill")
                        Text("プロフィール登録")
                    }
                }
        }
        .accentColor(.orange)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
