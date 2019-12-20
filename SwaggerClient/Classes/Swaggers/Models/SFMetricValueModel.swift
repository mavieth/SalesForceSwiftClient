//
// SFMetricValueModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SFMetricValueModel: Codable {

    public var metricValueName: String?
    public var value: Double?
    public var timestamp: String?
    public var instanceKey: String?

    public init(metricValueName: String?, value: Double?, timestamp: String?, instanceKey: String?) {
        self.metricValueName = metricValueName
        self.value = value
        self.timestamp = timestamp
        self.instanceKey = instanceKey
    }


}

