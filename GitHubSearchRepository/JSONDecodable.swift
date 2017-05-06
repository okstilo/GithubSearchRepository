//
//  JSONDecodable.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/06.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}
