//
//  ContentView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {

    init() {
        UITabBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            TabList()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("プロフィール一覧")
                    }
                }.tag(1)
            TabRegister()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle.fill")
                        Text("プロフィール登録")
                    }
                }.tag(2)
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
