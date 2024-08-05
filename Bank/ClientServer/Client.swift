//
//  Client.swift
//  ClientServer
//
//  Created by Аlina Кovtunovich on 05.08.2024.
//

import Foundation

class Client {
    private let server: Server
    
    init(server: Server) {
        self.server = server
    }
    
    // Запуск клиента для обработки задач
    func startProcessing() {
        Task {
            while true {
                do {
                    if let task = await server.getTask() {
                        let result = try processTask(task)
                        await server.handleResult(result)
                    } else {
                        // Ожидание перед повторной попыткой
                        try await Task.sleep(nanoseconds: 1_000_000_000)
                    }
                } catch {
                    // Обработка ошибки
                    print("Error processing task: \(error)")
                }
            }
        }
    }
    
    // Обработка задачи с возможностью возникновения ошибки
    private func processTask(_ task: TaskModel) throws -> TaskResult {
        // Симуляция возможной ошибки
//        if Bool.random() {
//            throw NSError(domain: "ProcessingError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Random processing error"])
//        }
        
        print("Processing task: \(task.task)")
        return TaskResult(id: task.id, result: "Processed: \(task.task)")
    }
}
