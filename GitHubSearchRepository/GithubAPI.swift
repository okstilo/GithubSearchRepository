//
//  GithubAPI.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

final class GithubAPI {
    struct SearchRepositories: GithubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var parameters: Any? {
            return ["q" : keyword]
        }
    }
}
