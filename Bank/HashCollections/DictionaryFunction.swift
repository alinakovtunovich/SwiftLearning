//
//  DictionaryFunction.swift
//  HashCollections
//
//  Created by Аlina Кovtunovich on 20.07.2024.
//

import Foundation


func dictionaryCreating() {
    
    // Создание словаря
    var cityDictionary = ["Казань" : 1_314_685, "Уфа" : 1_157_994, "Ростов-на-Дону": 1_135_968, "Москва": 13_104_177]
    print("Создан словарь: \n", cityDictionary)
    
    
    // Добавление пар ключ-значение
    cityDictionary["Санкт-Петербург"] = 5_600_044
    print("Словарь после добавления нового города: \n", cityDictionary)
    
    // Удаление одной пары ключ-значение
    cityDictionary.removeValue(forKey: "Москва")
    print("Словарь после удаления Москвы из списка: \n", cityDictionary)
    
    // Обновление значения для одного из ключей
    cityDictionary["Ростов-на-Дону"] = 1_140_487
    print("Обновление населения РнД: \n", cityDictionary)
    
    // Получение значения для одного из ключей
    if let kazanPopulation = cityDictionary["Казань"] {
        print("Население города Казань - \(kazanPopulation)")
    } else {
        print("Город не найден")
    }
}

