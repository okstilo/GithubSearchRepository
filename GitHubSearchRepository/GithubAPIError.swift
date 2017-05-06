//
//  GithubAPIError.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

struct GithubAPIError: JSONDecodable, Error {
    let message: String
    
    init(json: Any) throws {
        guard let dict = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        guard let message = dict["message"] as? String else {
            throw JSONDecodeError.missingValue(key: "message", actualValue: dict["message"])
        }
        
        self.message = message
    }
}
