//
//  WizardViewModel.swift
//  AppAPI
//
//  Created by Аlina Кovtunovich on 07.08.2024.
//

import Foundation
import Combine

class WizardViewModel: ObservableObject {
    @Published var wizards: [Wizard] = []

    private var cancellables = Set<AnyCancellable>()

    func fetchWizards() {
        NetworkManager.shared.fetchWizards { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let wizards):
                    self?.wizards = wizards
                case .failure(let error):
                    print("Error fetching wizards: \(error)")
                }
            }
        }
    }
}
