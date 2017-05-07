//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/08.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
