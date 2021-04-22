//
//  ResultStructure.swift
//  samplePhoneBook
//
//  Created by 密山 彩葉 on 2021/04/21.
//

import Foundation

struct Results: Codable {
    let address1: String
    let address2: String
    let address3: String
    let kana1: String
    let kana2: String
    let kana3: String
    let prefcode: String
    let zipcode: String
}
