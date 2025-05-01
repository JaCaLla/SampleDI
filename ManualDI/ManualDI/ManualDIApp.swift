//
//  ManualDIApp.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import SwiftUI

@main
struct ManualDIApp: App {
    var body: some Scene {
        WindowGroup {
            let userService = DefaultUserService()
            let viewModel = UserListViewModel(userService: userService)
            UserListView(viewModel: viewModel)
        }
    }
}
