//
//  UserDataMock.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import Foundation
@testable import SwinjectDI

class DefaultUserServiceMock: UserService {
    func fetchUsers() -> [User] {
        return [
            User(id: 99, name: "Mocked User")
        ]
    }
}
