//
//  SearchResponseTests.swift
//
//  Created by Masaki Kitagawa on 2020/05/01.
//

import Foundation
import XCTest
import GitHubSearch

class SearchResponseTests : XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        let data = SearchResponse<Repository>.exampleJSON.data(using: .utf8)!
        let res = try jsonDecoder.decode(SearchResponse<Repository>.self, from: data)

        XCTAssertEqual(res.totalCount, 141722)
        XCTAssertEqual(res.items.count, 3)

        let firstItem = res.items.first
        XCTAssertEqual(firstItem?.name, "swift")
        XCTAssertEqual(firstItem?.fullName, "apple/swift")
    }
}
