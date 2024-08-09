//
// TraitDto.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TraitDto: Codable {

    public var _id: UUID?
    public var name: TraitName?

    public init(_id: UUID? = nil, name: TraitName? = nil) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }

}
