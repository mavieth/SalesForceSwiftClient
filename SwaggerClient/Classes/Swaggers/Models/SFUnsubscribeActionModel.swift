//
// SFUnsubscribeActionModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFUnsubscribeActionModel: Codable {
    /** Unsubscribe JWT Token */
    public var token: String?

    public init(token: String?) {
        self.token = token
    }
}
