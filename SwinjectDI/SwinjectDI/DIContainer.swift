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

        container.register(UserService.self, name: "v1") { _ in DefaultUserService() }
        container.register(UserService.self, name: "v2") { _ in DefaultUserServiceV2() }

        container.register(UserListViewModel.self, name: "v1") { r in
            let service = r.resolve(UserService.self, name: "v1")!
            return UserListViewModel(userService: service)
        }

        container.register(UserListViewModel.self, name: "v2") { r in
            let service = r.resolve(UserService.self, name: "v2")!
            return UserListViewModel(userService: service)
        }
    }
}
