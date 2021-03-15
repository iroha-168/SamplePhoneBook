//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct TabRegister: View {
    var body: some View {
        VStack {
            HStack {
                CustomNavigationBar()
            }
            Spacer()
            
            Text("プロフィール登録")
            Spacer()
        }
    }
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        TabRegister()
    }
}
