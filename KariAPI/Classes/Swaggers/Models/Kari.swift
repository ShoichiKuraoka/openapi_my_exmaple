//
// Kari.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

/** かりかりモデル */
public struct Kari: Codable {

    public enum LegType: String, Codable { 
        case lead = "lead"
        case mark = "mark"
        case allround = "allround"
    }
    public var identifier: String

    public var createdAt: Date

    public var updatedAt: Date

    /** 名前 */
    public var name: String
    /** 脚質（逃、追、両） */
    public var legType: LegType?
    public init(identifier: String, createdAt: Date, updatedAt: Date, name: String, legType: LegType?) { 
        self.identifier = identifier
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.name = name
        self.legType = legType
    }

}