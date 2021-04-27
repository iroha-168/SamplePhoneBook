//
//  ContentViewModel.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/26.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    // これがなんのためにあるのかよく分からない
    var beforeChangedString = ""
    
    // データの更新があれば自分自身を即時反映
    @Published var changedString = ""
    
    func change() {
        // UI変更時の処理
        
    }
}


