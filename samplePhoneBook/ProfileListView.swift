//
//  ProfileListView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/03/11.
//

import SwiftUI

struct ProfileListView: View {
    var numbers = [1, 2, 3, 4, 5]
    var body: some View {
        VStack {
            ForEach(0 ..< 5) {_ in
                ProfileRowView()
            }
        }
    }
}

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
