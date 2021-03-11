//
//  ProfileRowView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/10.
//

import SwiftUI

struct ProfileRowView: View {
    var height: CGFloat = 100
    var width = UIScreen.main.bounds.width - 10
    
    var body: some View {
        
        HStack {
            Image("koara")
                .resizable()
                .frame(width: 90, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            VStack {
                HStack {
                    Text("コアラ 太郎")
                        .font(.title2)
                    Spacer()
                }
                .padding()
                
                HStack {
                Spacer()
                    Button(action: {}) {
                        Text("編集")
                    }
                    .foregroundColor(.red)
                    Button(action: {}) {
                        Text("削除")
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.trailing)
            }
        }
        .background(Color.white)
        .cornerRadius(20)
        .padding()
        .frame(width: width, height: height)
        .shadow(radius: 10)
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView()
    }
}
