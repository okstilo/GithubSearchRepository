//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

public struct SearchResponse<Item: Decodable>: Decodable {
    public var totalCount: Int
    public var items: [Item]

    public enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
