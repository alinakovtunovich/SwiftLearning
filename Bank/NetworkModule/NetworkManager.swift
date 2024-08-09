//
//  NetworkManager.swift
//  NetworkModule
//
//  Created by Аlina Кovtunovich on 07.08.2024.
//
import Foundation

public class NetworkManager {
    public static let shared = NetworkManager()

    private init() {}

    public func fetchWizards(completion: @escaping (Result<[Wizard], Error>) -> Void) {
        let url = URL(string: "https://wizard-world-api.herokuapp.com/Wizards")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data"])))
                return
            }

            do {
                let wizards = try JSONDecoder().decode([Wizard].self, from: data)
                completion(.success(wizards))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
