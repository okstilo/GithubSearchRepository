//
//  RepositoryTests.swift
//
//  Created by Masaki Kitagawa on 2020/05/01.
//

import Foundation
import XCTest
import GitHubSearch

class RepositoryTests : XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        let data = Repository.exampleJSON.data(using: .utf8)!
        let r = try jsonDecoder.decode(Repository.self, from: data)

        XCTAssertEqual(r.id, 44838949)
        XCTAssertEqual(r.name, "swift")
        XCTAssertEqual(r.fullName, "apple/swift")
        XCTAssertEqual(r.owner.id, 10639145)
    }
}
