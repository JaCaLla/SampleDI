//
//  UserListViewModel.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//
import SwiftUI

class UserListViewModel: ObservableObject {
    @Published var users: [User] = []

    private let userService: UserService

    init(userService: UserService) {
        self.userService = userService
        loadUsers()
    }

    func loadUsers() {
        self.users = userService.fetchUsers()
    }
}

