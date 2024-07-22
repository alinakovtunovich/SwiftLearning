//
//  СustomHash.swift
//  HashCollections
//
//  Created by Аlina Кovtunovich on 20.07.2024.
//

import Foundation


func customHash(string: String) -> Int {
    // простое число для умножения
    let simpleNumber = 31
    // переменная для хранения результата
    var hash = 0
    
    // цикл, в котором суммируется ASCII-коды всех символов строки
    for char in string {
        let asciiChar = Int(char.asciiValue ?? 0)
        hash = hash &* simpleNumber &+ asciiChar
    }
    // простое число (31) используется для умножения текущего значения хеша.
    // Простые числа часто выбирают для таких целей, чтобы уменьшить вероятность коллизий
    
    return hash
}
