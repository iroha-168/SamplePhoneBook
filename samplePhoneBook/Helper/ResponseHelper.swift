//
//  ResponseHelper.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/22.
//

import Foundation

struct ResponseHelper {
    static func whenSuccess(requestResults: RequestResults) -> ViewHelper {
        guard let address = requestResults.results else {
            return ViewHelper(string: "存在しない郵便番号です", array: [])
        }
        
        var addressArray: Array<String> = []
        switch address.count {
            case 1:
                return ViewHelper(string: address[0].address1 + address[0].address2 + address[0].address3, array: [])
            
            default:
                for i in 0..<address.count {
                    addressArray += [address[i].address1 + address[i].address2 + address[i].address3]
                }
                return ViewHelper(string: "", array: addressArray)
        }
    }

    static func createUrl(zipcode: String) -> URL?{
        let url = URL(string: "https://zipcloud.ibsnet.co.jp/api/search")!
        
        guard var components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
            return nil
        }
        components.queryItems =
            [URLQueryItem(name: "zipcode", value: zipcode)] + (components.queryItems ?? [])
        return components.url
    }
}
