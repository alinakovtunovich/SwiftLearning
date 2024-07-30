//
//  SetFunction.swift
//  HashCollections
//
//  Created by Аlina Кovtunovich on 20.07.2024.
//

import Foundation


func setCreating() {
    // создание множества
    var exampleSet: Set<Int> = [1, 2, 3, 4]
    print("Создание множества: ", exampleSet)
    
    // добавление элементов в множество
    exampleSet.insert(5)
    exampleSet.insert(6)
    exampleSet.insert(7)
    
    print("Добавление элементов: ", exampleSet)
    
    // удаление элемента из множества
    exampleSet.remove(3)
    print("Удаление элемента '3': ", exampleSet)
    
    // проверка, существует ли элемент
    let checkFirst = exampleSet.contains(4)
    let checkSecond = exampleSet.contains(3)
    print("Проверка сужествования элемента '4': ", checkFirst)
    print("Проверка сужествования элемента '3': ", checkSecond)
    
    
    var secondSet = [5, 7, 8, 10]
    
    // Операция объединения
    let unionSet = exampleSet.union(secondSet)
    
    // Операция пересечения
    let intersectionSet = exampleSet.intersection(secondSet)
    
    // Операция разности на множествах
    let subtractingSet = exampleSet.subtracting(secondSet)
    
    print("Операция объединения: \(unionSet)")
    print("Операция пересечения: \(intersectionSet)")
    print("Операция разности: \(subtractingSet)")
    
}
