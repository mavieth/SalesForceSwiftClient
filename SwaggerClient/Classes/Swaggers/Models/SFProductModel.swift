//
// SFProductModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFProductModel: Codable {
    public var key: String?
    public var parentId: Int?
    public var parentName: String?
    public var order: Int?
    public var path: String?
    public var _public: Bool?
    public var isActive: Bool?

    public init(key: String?, parentId: Int?, parentName: String?, order: Int?, path: String?, _public: Bool?, isActive: Bool?) {
        self.key = key
        self.parentId = parentId
        self.parentName = parentName
        self.order = order
        self.path = path
        self._public = _public
        self.isActive = isActive
    }

    public enum CodingKeys: String, CodingKey {
        case key
        case parentId
        case parentName
        case order
        case path
        case _public = "public"
        case isActive
    }
}
