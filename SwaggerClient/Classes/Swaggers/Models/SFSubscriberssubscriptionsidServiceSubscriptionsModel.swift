//
// SFSubscriberssubscriptionsidServiceSubscriptionsModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SFSubscriberssubscriptionsidServiceSubscriptionsModel: Codable {

    public var serviceKey: String?
    public var major: Bool?
    public var minor: Bool?
    public var maintenances: Bool?

    public init(serviceKey: String?, major: Bool?, minor: Bool?, maintenances: Bool?) {
        self.serviceKey = serviceKey
        self.major = major
        self.minor = minor
        self.maintenances = maintenances
    }


}

