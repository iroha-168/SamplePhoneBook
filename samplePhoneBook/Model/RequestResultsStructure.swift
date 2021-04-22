//
//  RequestResultsStructure.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import Foundation

struct RequestResults: Codable {
    let message: String?
    let results: [Results]?
    let status: Int
}
