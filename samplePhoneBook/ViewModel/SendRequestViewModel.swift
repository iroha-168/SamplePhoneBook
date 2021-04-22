//
//  SendRequestViewModel.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import Foundation

struct ResponseHelper {
    let string: String?
    let array: Array<String>
}

enum ResponseType: Int {
    case success = 200
    case notFound = 400
    case serverError = 500
    case unknownError
    
    func checkErrorType(requestResults: RequestResults) -> ResponseHelper {
        switch self {
        case .success:
            return whenSuccess(requestResults: requestResults)
            
        case .notFound:
            return ResponseHelper(string: requestResults.message, array: [])
            
        case .serverError:
            return ResponseHelper(string: requestResults.message, array: [])
            
        default:
            return ResponseHelper(string: "unknownError", array: [])
        }
        
    }
}

func whenSuccess(requestResults: RequestResults) -> ResponseHelper {
    guard let address = requestResults.results else {
        return ResponseHelper(string: "存在しない郵便番号です", array: [])
    }
    
    var addressArray: Array<String> = []
    switch address.count {
        case 1:
            return ResponseHelper(string: address[0].address1 + address[0].address2 + address[0].address3, array: [])
        
        default:
            for i in 0..<address.count {
                addressArray += [address[i].address1 + address[i].address2 + address[i].address3]
            }
            return ResponseHelper(string: "", array: addressArray)
    }
}

func createUrl(zipcode: String) -> URL?{
    let url = URL(string: "https://zipcloud.ibsnet.co.jp/api/search")!
    
    guard var components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
        return nil
    }
    components.queryItems =
        [URLQueryItem(name: "zipcode", value: zipcode)] + (components.queryItems ?? [])
    return components.url
}

func sendRequest(zipcode: String) {
    
    guard let url = createUrl(zipcode: zipcode) else { return }
    
    // ===APIリクエストを送信===
    let request = URLRequest(url: url)
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        guard let data = data else { return }
        do {
            // デコードする
            let requestResults: RequestResults = try JSONDecoder().decode(RequestResults.self, from: data)
            // checkErrorTypeを初期化
            ResponseType.init(rawValue: requestResults.status)?
                .checkErrorType(requestResults: requestResults)
            
        } catch let error {
            print(error)
        }
    }
    task.resume()
}
