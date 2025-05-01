//
//  DIContainer.swift
//  SwinjectDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import Swinject

class DIContainer {
    static let shared = DIContainer()
    let container: Container

    private init() {
        container = Container()

        container.register(UserService.self) { _ in DefaultUserService() }
        container.register(UserListViewModel.self) { r in
            UserListViewModel(userService: r.resolve(UserService.self)!)
        }
    }
}
