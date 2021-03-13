//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct TabRegister: View {
    var width = UiComponent.screenWidth
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                Text("プロフィール登録")
            }
            .frame(width: width, height: 50)
            .background(Color.orange)
        Spacer()
        }
    }
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        TabRegister()
    }
}
