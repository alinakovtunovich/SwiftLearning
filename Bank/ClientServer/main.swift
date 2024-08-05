//
//  main.swift
//  ClientServer
//
//  Created by Аlina Кovtunovich on 04.08.2024.
//

import Foundation

// Создание сервера и клиентов
let server = Server()
let client1 = Client(server: server)
let client2 = Client(server: server)

// Добавление задач на сервер
Task {
    await server.addTask(TaskModel(id: UUID(), task: "Task 1"))
    await server.addTask(TaskModel(id: UUID(), task: "Task 2"))
    await server.addTask(TaskModel(id: UUID(), task: "Task 3"))
    
    // Запуск клиентов
    client1.startProcessing()
    client2.startProcessing()
}

// Поддержание работы основного потока
RunLoop.main.run()
