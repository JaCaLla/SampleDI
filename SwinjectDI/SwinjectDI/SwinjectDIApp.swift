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
            let viewModelV1 = DIContainer.shared.container.resolve(UserListViewModel.self, name: "v1")!
            UserListView(viewModel: viewModelV1)
            
//            let viewModelV2 = DIContainer.shared.container.resolve(UserListViewModel.self, name: "v2")!
//            UserListView(viewModel: viewModelV2)
        }
    }
}
