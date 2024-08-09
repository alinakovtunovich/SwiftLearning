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

    public func fetchWizards(completion: @escaping (Result<[WizardDto], Error>) -> Void) {
        WizardsAPI.wizardsGet { data, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data"])))
                return
            }

            completion(.success(data))
        }
    }
}

