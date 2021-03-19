//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct ProfileRegisterView: View {
    
    @State private var name = ""
    @State private var phoneNum = ""
    @State private var postNum = ""
    @State private var adress = ""
    
    var width = UiComponent.screenWidth
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image("koara")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(
                                Color(.systemGreen),
                                lineWidth: 4
                            )
                    )
                TextField("氏名を入力", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("電話番号を入力", text: $phoneNum)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                HStack {
                    
                    TextField("郵便番号を入力", text: $postNum)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                    
                    Button(action: {
                        // TODO: something
                    })
                    {
                        Text("検索")
                            .foregroundColor(Color(.systemGreen))
                            .padding()
                            .background(Color(.systemYellow))
                            .cornerRadius(10)
                            .frame(height: 50)
                            .foregroundColor(Color(.systemGreen))
                    }
                    .padding(.trailing)
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
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegisterView()
    }
}
