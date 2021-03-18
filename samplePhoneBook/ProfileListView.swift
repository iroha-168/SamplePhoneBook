//
//  ProfileListView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/11.
//

import SwiftUI

struct ProfileListView: View {
    var width = UiComponent.screenWidth
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
        NavigationView{
            VStack {
                ForEach(0 ..< 5){_ in
                    ProfileRow()
                }
            }
            // ナビゲーションバータイトルをつける
            .navigationBarTitleDisplayMode(.inline)
            // カスタムナビゲーションを作成
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "list.bullet")
                        Text("プロフィール登録").font(.headline)
                    }
                    .foregroundColor(.orange)
                }
            }
        }
    }
}

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
