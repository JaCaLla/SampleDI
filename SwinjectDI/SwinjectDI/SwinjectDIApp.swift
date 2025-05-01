//
//  SwinjectDIApp.swift
//  SwinjectDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import SwiftUI

@main
struct SwinjectDIApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = DIContainer.shared.container.resolve(UserListViewModel.self)!
            UserListView(viewModel: viewModel)
        }
    }
}
