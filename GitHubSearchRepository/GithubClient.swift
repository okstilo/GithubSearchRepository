//
//  GithubClient.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/08.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

class GithubClient {
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    func send<Request: GithubRequest>(
        request: Request,
        completion: ((Result<Request.Response, GithubClientError>) -> Void)) {
        
        // WIP
    }
}
