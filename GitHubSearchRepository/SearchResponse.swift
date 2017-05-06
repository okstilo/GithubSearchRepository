//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

struct SearchResponse<Item: JSONDecodable>: JSONDecodable {
    let totalCount: Int
    let items: [Item]
    
    init(json: Any) throws {
        guard let dict = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        guard let totalCount = dict["total_count"] as? Int else {
            throw JSONDecodeError.missingValue(key: "total_count", actualValue: dict["total_count"])
        }
        guard let itemObjects = dict["items"] as? [Any] else {
            throw JSONDecodeError.missingValue(key: "items", actualValue: dict["items"])
        }
        
        let items = try itemObjects.map { try Item(json: $0) }
        
        self.totalCount = totalCount
        self.items = items
    }
    
}
