//
//  ProfileRowView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/10.
//

import SwiftUI

struct ProfileRowView: View {
    @State var buttonText = "button"
    
    var body: some View {
        
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Image("koara")
                    .resizable()
                    .frame(width: 100, height: 120)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        Text("コアラ 太郎")
                            .font(.largeTitle)
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
            .compositingGroup()
            .shadow(radius: 10)
            .background(Color.white) // 色も一緒に角を丸めたい
            .overlay(
                RoundedRectangle(cornerRadius: 23)
                    .stroke(Color.gray, lineWidth: 1)
                    
            )
            
        }
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView()
    }
}
