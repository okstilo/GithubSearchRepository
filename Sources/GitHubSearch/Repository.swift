//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/06.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

public struct Repository: Decodable {
    public var id: Int
    public var name: String
    public var fullName: String
    public var owner: User

    public enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
