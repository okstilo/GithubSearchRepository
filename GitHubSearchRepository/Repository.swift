//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/06.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

struct Repository: JSONDecodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    init(json: Any) throws {
        guard let dict = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        guard let id = dict["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dict["id"])
        }
        guard let name = dict["name"] as? String else {
            throw JSONDecodeError.missingValue(key: "name", actualValue: dict["name"])
        }
        guard let fullName = dict["full_name"] as? String else {
            throw JSONDecodeError.missingValue(key: "full_name", actualValue: dict["full_name"])
        }
        guard let ownerObject = dict["owner"] else {
            throw JSONDecodeError.missingValue(key: "owner", actualValue: dict["owner"])
        }
        
        self.id = id
        self.name = name
        self.fullName = fullName
        self.owner = try User(json: ownerObject)
    }
}
