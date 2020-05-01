//
//  User.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/06.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

public struct User: Decodable {
    public var id: Int
    public var login: String
}
