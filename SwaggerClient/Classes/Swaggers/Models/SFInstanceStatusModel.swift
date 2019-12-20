//
// SFInstanceStatusModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFInstanceStatusModel: Codable {
    public enum SFStatusModel: String, Codable {
        case ok = "OK"
        case majorIncidentCore = "MAJOR_INCIDENT_CORE"
        case minorIncidentCore = "MINOR_INCIDENT_CORE"
        case maintenanceCore = "MAINTENANCE_CORE"
        case majorIncidentNoncore = "MAJOR_INCIDENT_NONCORE"
        case minorIncidentNoncore = "MINOR_INCIDENT_NONCORE"
        case maintenanceNoncore = "MAINTENANCE_NONCORE"
    }

    public var key: String
    public var location: String?
    public var environment: String?
    public var releaseVersion: String?
    public var releaseNumber: String?
    /** A top level status of the instance. If multiple events are ongoing, then provides the most severe. */
    public var status: SFStatusModel?
    public var incidents: [SFInlineResponse2001Model]?
    public var maintenances: [SFInlineResponse2005Model]?
    public var generalMessages: [SFInlineResponse2007Model]?

    public init(key: String, location: String?, environment: String?, releaseVersion: String?, releaseNumber: String?, status: SFStatusModel?, incidents: [SFInlineResponse2001Model]?, maintenances: [SFInlineResponse2005Model]?, generalMessages: [SFInlineResponse2007Model]?) {
        self.key = key
        self.location = location
        self.environment = environment
        self.releaseVersion = releaseVersion
        self.releaseNumber = releaseNumber
        self.status = status
        self.incidents = incidents
        self.maintenances = maintenances
        self.generalMessages = generalMessages
    }

    public enum CodingKeys: String, CodingKey {
        case key
        case location
        case environment
        case releaseVersion
        case releaseNumber
        case status
        case incidents = "Incidents"
        case maintenances = "Maintenances"
        case generalMessages = "GeneralMessages"
    }
}
