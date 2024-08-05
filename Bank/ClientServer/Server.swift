//
//  Server.swift
//  ClientServer
//
//  Created by Аlina Кovtunovich on 05.08.2024.
//

import Foundation

// Сервер
class Server {
    private let taskManager = TaskManager()
        
        // Добавление задачи на сервер
        func addTask(_ task: TaskModel) async {
            await taskManager.addTask(task)
        }
        
        // Получение следующей задачи для клиента
        func getTask() async -> TaskModel? {
            await taskManager.getNextTask()
        }
        
        // Обработка результата от клиента
        func handleResult(_ result: TaskResult) async {
            await taskManager.saveResult(result)
        }
}
