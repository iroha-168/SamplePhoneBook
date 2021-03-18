//
//  ProfileListView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/11.
//

import SwiftUI

struct ProfileListView: View {
    
    var width = UiComponent.screenWidth
    var height = UiComponent.screenHeight - 50
    
    
    var body: some View {
        ZStack {
            VStack {
                ForEach(0 ..< 4) {_ in
                    ProfileRow()
                }
            }
            VStack {
                VStack {
                    NavigationBarView(
                        image: Image(systemName: "list.bullet"),
                        titleName: "プロフィール一覧"
                    )
                    .frame(width: width, height: 50)
                }
                Spacer()
            }
        }
    }
}

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
