//
//  WizardListView.swift
//  AppAPI
//
//  Created by Аlina Кovtunovich on 07.08.2024.
//

import SwiftUI

struct WizardListView: View {
    @ObservedObject private var viewModel = WizardViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.wizards, id: \.id) { wizard in
                VStack(alignment: .leading) {
                    HStack {
                        Text(wizard.firstName ?? "")
                        Text(wizard.lastName ?? "")
                    }
                }
            }
            .navigationTitle("Wizards in HP's Book")
            .onAppear {
                viewModel.fetchWizards()
            }
        }
    }
}



struct WizardListView_Previews: PreviewProvider {
    static var previews: some View {
        WizardListView()
    }
}
