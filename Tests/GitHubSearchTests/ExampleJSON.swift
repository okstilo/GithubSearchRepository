//
//  ExampleJSON.swift
//
//  Created by Masaki Kitagawa on 2020/05/01.
//

import GitHubSearch

extension User {
    static var exampleJSON: String {
        return """
        {
            "login": "apple",
            "id": 10639145
        }
        """
    }
}

extension Repository {
    static var exampleJSON: String {
        return """
        {
            "id": 44838949,
            "name": "swift",
            "full_name": "apple/swift",
            "owner": {
                "login": "apple",
                "id": 10639145
            }
        }
        """
    }
}

extension SearchResponse {
    static var exampleJSON: String {
        return """
        {
            "total_count": 141722,
            "items": [
                {
                    "id": 44838949,
                    "name": "swift",
                    "full_name": "apple/swift",
                    "owner": {
                        "id": 10639145,
                        "login": "apple"
                    }
                },
                {
                    "id": 790019,
                    "name": "swift",
                    "full_name": "openstack/swift",
                    "owner": {
                        "id": 324574,
                        "login": "openstack"
                    }
                },
                {
                    "id": 20822291,
                    "name": "SwiftGuide",
                    "full_name": "ipader/SwiftGuide",
                    "owner": {
                        "id": 373016,
                        "login": "ipader"
                    }
                }
            ]
        }
        """
    }
}
