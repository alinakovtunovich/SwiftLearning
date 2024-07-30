//
//  Config.swift
//  PatternMovieApp
//
//  Created by Аlina Кovtunovich on 29.07.2024.
//

import Foundation

// Singleton для конфигурации приложения
class Config {
    // Создаем статическое свойство для единственного экземпляра
    static let shared = Config()

    // приватный инициализатор, чтобы предотвратить создание доп-ых экземпляров
    private init() {}

    // пример мараметра конфигуратора
    var dataSource: String = "local data source"

}
