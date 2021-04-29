//
//  ContentViewModel.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/26.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    var beforeChangedString = ""
    
    // データの更新があれば自分自身を即時反映
    @Published var changedString = ""
    
    // TODO: 引数にクロージャを渡せるようにしてねん
    func change(completion: @escaping () -> Void) {
        // UI変更時の処理
        // ここでサブスレッドの処理をする
        // APIデモ
        DispatchQueue.global(qos: .default).async {
            self.beforeChangedString = "Hello " + changeLanguage()
            
            // TODO: ここにメインスレッドの処理を書くbyみっちゃん
            // TODO: メインスレッド内でchangedStringにbeforeChangedStringを代入してくださいな
            // TODO: ついでにメインスレッド内で非同期処理もしてくださいな
            DispatchQueue.main.async {
                self.changedString = self.beforeChangedString
                Text(self.changedString)
            }
        }
    }
}

    
func changeLanguage() -> String {
    let randomLanguage: [String] = ["Swift", "Python", "PHP", "Ruby"]
    return (randomLanguage.randomElement() ?? "") as String
}

