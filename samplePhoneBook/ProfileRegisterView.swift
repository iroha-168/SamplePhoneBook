//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct ProfileRegisterView: View {
    
    @State private var name = ""
    @State private var adress = ""
    @State private var phone = ""
    @State private var postNum = ""
    @State private var isDisabled = true
    
    var width = UiComponent.screenWidth
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
        ZStack {
            // FIXME: 背景色を設定できない
            Color(UIColor.systemTeal)
            
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

                    TextField("氏名を入力", text: $name, onCommit: {
                        self.validateLendth()
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                        
                    TextField("電話番号を入力", text: $phone, onCommit: {
                        self.validateLendth()
                    })
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
                    
                    TextField("住所を入力", text: $adress, onCommit: {
                        self.validateLendth()
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {
                        
                    })
                    {
                        Text("登録する")
                        .foregroundColor(Color(.systemGreen))
                        .frame(width: width*0.85, height: 30)
                        .padding(10)
                        .background(Color(isDisabled ? .systemGray5 : .systemYellow))
                        .disabled(isDisabled)
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
    
    // 入力チェック
    private func validateLendth() {
        if self.name.count > 1 && self.adress.count > 1 && self.phone.count > 1 {
            // 入力有りの場合
            isDisabled = false
        }
    }
    
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegisterView()
    }
}
