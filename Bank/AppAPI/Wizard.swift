//
//  Wizard.swift
//  AppAPI
//
//  Created by Аlina Кovtunovich on 07.08.2024.
//
import Foundation

import Foundation

public struct Wizard: Codable, Identifiable {
    public let id: UUID
    public let firstName: String?
    public let lastName: String?
    public let house: String?
    public let ancestry: String?
    public let eyeColour: String?
    public let hairColour: String?
    public let wand: Wand?
    public let patronus: String?
    public let hogwartsStudent: Bool?
    public let hogwartsStaff: Bool?
    public let actor: String?
    public let alive: Bool?
    public let image: String?
}

public struct Wand: Codable {
    public let wood: String?
    public let core: String?
    public let length: Double?
}
