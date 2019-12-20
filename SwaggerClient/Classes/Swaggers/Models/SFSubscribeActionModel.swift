//
// SFSubscribeActionModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFSubscribeActionModel: Codable {
    /** Email address of subscriber */
    public var emailAddress: String?
    /** Locale for alerts */
    public var locale: String?
    public var subscriptions: SFSubscribeSubscriptionsModel?

    public init(emailAddress: String?, locale: String?, subscriptions: SFSubscribeSubscriptionsModel?) {
        self.emailAddress = emailAddress
        self.locale = locale
        self.subscriptions = subscriptions
    }
}
