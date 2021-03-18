//
//  NavigationBarView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/17.
//

import SwiftUI

struct NavigationBarView: View {
    let image: Image
    let titleName: String
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                image
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(10)
            }
            ZStack {
                Text("\(titleName)")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .font(.title)
            }
            Spacer()
        }
        .background(Color.orange)
    }
}

