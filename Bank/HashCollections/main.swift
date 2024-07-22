//
//  main.swift
//  HashCollections
//
//  Created by Аlina Кovtunovich on 20.07.2024.
//

import Foundation


// MARK 1: Функция, возвращающая хеш строки

// Пример использования функции stringHash
let exampleString = "Hello, World!"
let hashValue = stringHash(string: exampleString)
print("Hash value of '\(exampleString)': \(hashValue)")
print("_______________________________________________________________\n")

// MARK 2: Собственная хеш-функция

// Пример использования функции customHash
let customValueHash = customHash(string: exampleString)
print("Custom hash value of '\(exampleString)': \(customValueHash)")
print("_______________________________________________________________\n")


// MARK 3: создание и изменение Set
setCreating()
print("_______________________________________________________________\n")

// MARK 4: работа со словарем
dictionaryCreating()
