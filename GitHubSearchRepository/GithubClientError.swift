//
//  GithubClientError.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

enum GithubClientError: Error {
    // 通信に失敗
    case connectError(Error)
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    // APIからのエラーレスポンスを受け取った
    case apiError(GithubAPIError)
}
