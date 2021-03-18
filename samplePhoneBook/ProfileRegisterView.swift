//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct ProfileRegisterView: View {
    var width = UiComponent.screenWidth
    
    var body: some View {
        ZStack {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            }
            VStack {
                VStack {
                    NavigationBarView(
                        image: Image(systemName: "person.circle.fill"), titleName: "プロフィール登録"
                    )
                    Spacer()
                }
            }
        }
    }
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegisterView()
    }
}
