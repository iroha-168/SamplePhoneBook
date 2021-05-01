//
//  ViewHelper.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/22.
//

import Foundation

struct ViewHelper {
    let string: String?
    let array: Array<String>
}

enum ResponseType: Int {
    case success = 200
    case notFound = 400
    case serverError = 500
    case unknownError
    
    func checkErrorType(requestResults: RequestResults) -> ViewHelper {
        switch self {
        case .success:
            return ResponseHelper.whenSuccess(requestResults: requestResults)
            
        case .notFound:
            return ViewHelper(string: requestResults.message, array: [])
            
        case .serverError:
            return ViewHelper(string: requestResults.message, array: [])
            
        default:
            return ViewHelper(string: "unknownError", array: [])
        }
        
    }
}
