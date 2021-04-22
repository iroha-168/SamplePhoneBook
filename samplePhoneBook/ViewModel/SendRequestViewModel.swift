//
//  SendRequestViewModel.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import Foundation
import SwiftUI

class SendRequestViewModel: ObservableObject {

    func sendRequest(zipcode: String) {
        
        guard let url = ResponseHelper.createUrl(zipcode: zipcode) else { return }
        
        // ===APIリクエストを送信===
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            do {
                // デコードする
                let requestResults: RequestResults = try JSONDecoder().decode(RequestResults.self, from: data)
                // checkErrorTypeを初期化
                let value = ResponseType.init(rawValue: requestResults.status)?
                    .checkErrorType(requestResults: requestResults)
                
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}

