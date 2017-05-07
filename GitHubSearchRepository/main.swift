//
//  main.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/05.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

print("Enter your query here > ", terminator: "")

guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

let client = GithubClient()
let request = GithubAPI.SearchRepositories(keyword: keyword)

client.send(request: request) { result in
    switch result {
    case let .success(response):
        for item in response.items {
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        print("\(error)")
        exit(1)
    }
}

let timeoutInterval: TimeInterval = 60
Thread.sleep(forTimeInterval: timeoutInterval)
print("Connection timeout")
exit(1)
