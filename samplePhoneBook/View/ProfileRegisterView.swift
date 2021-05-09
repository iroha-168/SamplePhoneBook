//
//  TabRegister.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/12.
//

import SwiftUI

struct ProfileRegisterView: View {
    @ObservedObject var profileRegisterVM: ProfileRegisterViewModel = ProfileRegisterViewModel()
    
    @State var name = ""
    @State var address = ""
    @State var phone = ""
    @State var postNum = ""
    @State var isDisabled = true
    
    var width = UiComponent.screenWidth
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.orange
    }
    
    var body: some View {
            
            NavigationView {
                ZStack {
                
                Color(UIColor.systemOrange)
                    .edgesIgnoringSafeArea(.all)
                
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
                        self.validateLength()
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    TextField("電話番号を入力", text: $phone, onCommit: {
                        self.validateLength()
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    HStack {
                        
                        TextField("郵便番号を入力", text: $postNum)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                        
                        Button(action:{
                            // ボタンをタップした時の処理
                            profileRegisterVM.request(postNum: postNum, completion: {
                                address = (profileRegisterVM.responseValue?.string)!
                            })
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
                    
                    TextField("住所を入力", text: $address, onCommit: {
                        self.validateLength()
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
                        .cornerRadius(5)
                        .foregroundColor(Color(.systemGreen))
                    }
                    .disabled(isDisabled)
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
    private func validateLength() {
        isDisabled = self.name.count > 0 && self.address.count > 0 && self.phone.count > 0 ? false : true
    }
}

struct TabRegister_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegisterView()
    }
}
