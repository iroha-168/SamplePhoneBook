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
        NavigationView {
            VStack {
                Text("Placeholder")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "person.circle.fill")
                    Text("プロフィール登録").font(.headline)
                }
                .foregroundColor(.orange)
            }
        }
    }
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegisterView()
    }
}
