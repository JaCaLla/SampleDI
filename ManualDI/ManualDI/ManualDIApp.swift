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
            // Screen 1
            let service1 = DefaultUserService()
            let viewModel1 = UserListViewModel(userService: service1)

            // Screen 2
            let service2 = DefaultUserServiceV2()
            let viewModel2 = UserListViewModel(userService: service2)
            
            UserListView(viewModel: viewModel1)
        }
    }
}
