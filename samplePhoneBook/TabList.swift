//
//  TabList.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct TabList: View {
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 30, height: 20)
                    .foregroundColor(.white)
                Text("プロフィール一覧")
            }
            .frame(width: width, height: 50)
            .background(Color.orange)
        Spacer()
        }
    }
}

struct TabList_Previews: PreviewProvider {
    static var previews: some View {
        TabList()
    }
}
