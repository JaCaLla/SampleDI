//
//  UserServices.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

protocol UserService {
    func fetchUsers() -> [User]
}

class DefaultUserService: UserService {
    func fetchUsers() -> [User] {
        return [
            User(id: 1, name: "Alice"),
            User(id: 2, name: "Bob")
        ]
    }
}

