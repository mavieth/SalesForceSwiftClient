//
// SFServiceSubscriptionModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFServiceSubscriptionModel: Codable {
    public var severities: SFSubscribeSubscriptionsSeveritiesModel?

    public init(severities: SFSubscribeSubscriptionsSeveritiesModel?) {
        self.severities = severities
    }
}
