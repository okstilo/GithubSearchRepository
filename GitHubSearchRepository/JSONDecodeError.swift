//
//  JSONDecodeError.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/06.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

enum JSONDecodeError: Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
