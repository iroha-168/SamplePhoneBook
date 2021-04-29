//
//  TestView.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import SwiftUI
import Dispatch

struct TestView: View {
    @State var string = "Hello, world!"
    @ObservedObject var testVM = TestViewModel()
    
    
    var body: some View {
        VStack {
            Text(string)
                .padding()
            Button(action: {
                // ボタンをタップした時の処理
                // TODO: ViewModelからchangeメソッドを呼び出す
                // TODO: クロージャで実行する処理も書いてねん
                testVM.change(completion: () -> Void)
                
            }) {
                Text("Change String")
            }
        }
    }
}



struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
