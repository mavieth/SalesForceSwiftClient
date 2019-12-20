//
// SFInlineResponse2005Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFInlineResponse2005Model: Codable {
    public var _id: Int?
    public var affectsAll: Bool?
    public var isCore: Bool?
    public var serviceKeys: [String]?
    public var instanceKeys: [String]?
    public var maintenanceImpacts: [SFMaintenancesMaintenanceImpactsModel]?
    public var createdAt: String?
    public var updatedAt: String?

    public init(_id: Int?, affectsAll: Bool?, isCore: Bool?, serviceKeys: [String]?, instanceKeys: [String]?, maintenanceImpacts: [SFMaintenancesMaintenanceImpactsModel]?, createdAt: String?, updatedAt: String?) {
        self._id = _id
        self.affectsAll = affectsAll
        self.isCore = isCore
        self.serviceKeys = serviceKeys
        self.instanceKeys = instanceKeys
        self.maintenanceImpacts = maintenanceImpacts
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey {
        case _id = "id"
        case affectsAll
        case isCore
        case serviceKeys
        case instanceKeys
        case maintenanceImpacts = "MaintenanceImpacts"
        case createdAt
        case updatedAt
    }
}
