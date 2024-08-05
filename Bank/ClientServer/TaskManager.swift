//
//  TaskManager.swift
//  ClientServer
//
//  Created by Аlina Кovtunovich on 04.08.2024.
//

import Foundation


// Модель задачи
struct TaskModel {
    let id: UUID
    let task: String
}

// Модель результата
struct TaskResult {
    let id: UUID
    let result: String
}


// Актор для управления состоянием задач
actor TaskManager {
    private var tasks: [UUID: TaskModel] = [:]
        private var results: [UUID: TaskResult] = [:]
        
        // Добавление задачи
        func addTask(_ task: TaskModel) {
            tasks[task.id] = task
        }
        
        // Получение следующей задачи и её удаление из списка
        func getNextTask() -> TaskModel? {
            guard let task = tasks.values.first else { return nil }
            tasks.removeValue(forKey: task.id)
            return task
        }
        
        // Сохранение результата
        func saveResult(_ result: TaskResult) {
            results[result.id] = result
        }
        
        // Проверка завершенности всех задач
        func allTasksCompleted() -> Bool {
            return tasks.isEmpty
        }
}
