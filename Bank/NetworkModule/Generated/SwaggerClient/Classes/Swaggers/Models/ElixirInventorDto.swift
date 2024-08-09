//
// ElixirInventorDto.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ElixirInventorDto: Codable {

    public var _id: UUID?
    public var firstName: String?
    public var lastName: String?

    public init(_id: UUID? = nil, firstName: String? = nil, lastName: String? = nil) {
        self._id = _id
        self.firstName = firstName
        self.lastName = lastName
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case firstName
        case lastName
    }

}
