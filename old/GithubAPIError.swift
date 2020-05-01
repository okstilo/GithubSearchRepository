//
//  GithubAPIError.swift
//  GitHubSearchRepository
//
//  Created by Masaki Kitagawa on 2017/05/07.
//  Copyright © 2017年 okstilo. All rights reserved.
//

import Foundation

struct GithubAPIError: JSONDecodable, Error {
    struct FieldError: JSONDecodable {
        let resource: String
        let field: String
        let code: String
        
        init(json: Any) throws {
            guard let dict = json as? [String : Any] else {
                throw JSONDecodeError.invalidFormat(json: json)
            }
            guard let resource = dict["resource"] as? String else {
                throw JSONDecodeError.missingValue(key: "resource", actualValue: dict["resource"])
            }
            guard let field = dict["field"] as? String else {
                throw JSONDecodeError.missingValue(key: "field", actualValue: dict["field"])
            }
            guard let code = dict["code"] as? String else {
                throw JSONDecodeError.missingValue(key: "code", actualValue: dict["code"])
            }
            
            self.resource = resource
            self.field = field
            self.code = code
        }
    }
    
    let message: String
    let fieldErrors: [FieldError]
    
    init(json: Any) throws {
        guard let dict = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        guard let message = dict["message"] as? String else {
            throw JSONDecodeError.missingValue(key: "message", actualValue: dict["message"])
        }
        
        let fieldErrorObjects = dict["errors"] as? [Any] ?? []
        let filedErrors = try fieldErrorObjects.map { try FieldError(json: $0) }
        
        self.message = message
        self.fieldErrors = filedErrors
    }
}
