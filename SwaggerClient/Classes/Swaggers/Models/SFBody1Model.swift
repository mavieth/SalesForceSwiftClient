//
// SFBody1Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFBody1Model: Codable {
    /** Email address of subscriber */
    public var emailAddress: String?
    /** Locale for alerts */
    public var locale: String?
    /** List of Subscriptions */
    public var subscription: [SFSubscribeSubscriptionsModel]?
    /** Subscriber Status */
    public var isActive: Bool?
    /** Subscriber subscribed to general message or not */
    public var generalMessageEmailSubscribed: Bool?
    public var createdAt: String?
    public var updatedAt: String?

    public init(emailAddress: String?, locale: String?, subscription: [SFSubscribeSubscriptionsModel]?, isActive: Bool?, generalMessageEmailSubscribed: Bool?, createdAt: String?, updatedAt: String?) {
        self.emailAddress = emailAddress
        self.locale = locale
        self.subscription = subscription
        self.isActive = isActive
        self.generalMessageEmailSubscribed = generalMessageEmailSubscribed
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
