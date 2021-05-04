//
//  ProfileRegisterViewModel.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import Foundation
import SwiftUI

class ProfileRegisterViewModel: ObservableObject {
    @Published var changedString = ""

    func request(postNum: String, completion: @escaping () -> Void) {

        func sendRequest() {
            // APIに接続
            let zipcode = postNum

            guard let url = ResponseHelper.createUrl(zipcode: zipcode) else { return }
            let request = URLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data else { return }
                do {
                    // デコードする
                    let requestResults: RequestResults = try JSONDecoder().decode(RequestResults.self, from: data)
                    // checkErrorTypeを初期化
                    let value = ResponseType.init(rawValue: requestResults.status)?
                        .checkErrorType(requestResults: requestResults)

                    // UIに変更を加える
                    DispatchQueue.main.async {
                        self.changedString = value as Any as! String
                        completion()
                    }

                } catch let error {
                    print(error)
                }
            }
            task.resume()
        }
    }
}


