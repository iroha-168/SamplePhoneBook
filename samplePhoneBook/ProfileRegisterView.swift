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
            VStack(spacing: 20) {
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
                    .padding(30)

                TextField("氏名を入力", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    
                TextField("電話番号を入力", text: $phoneNum)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
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
                            .frame(height: 20)
                            .padding(10)
                            .background(Color(.systemYellow))
                            .cornerRadius(5)
                            .foregroundColor(Color(.systemGreen))
                    }
                    .padding(.trailing)
                }
                
                TextField("住所を入力", text: $adress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: {
                    
                })
                {
                    Text("登録する")
                    
                    .foregroundColor(Color(.systemGreen))
                    .frame(width: width*0.85, height: 30)
                    .padding(10)
                    .background(Color(.systemYellow))
                    .cornerRadius(5)
                    .foregroundColor(Color(.systemGreen))
                }
            Spacer()
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
