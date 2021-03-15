//
//  CustomNavigationBar.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/15.
//

import SwiftUI

var width = UiComponent.screenWidth

struct CustomNavigationBar: View {
    @State var text: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            Text("プロフィール登録")
        }
        .frame(width: width, height: 50)
        .background(Color.orange)
        
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar()
    }
}
