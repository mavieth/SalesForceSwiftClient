//
// SFIncidentImpactTypeModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFIncidentImpactTypeModel: Codable {
    public var key: String?
    public var severity: String?

    public init(key: String?, severity: String?) {
        self.key = key
        self.severity = severity
    }
}
