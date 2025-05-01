//
//  UserListViewModel.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//
import SwiftUI

 class UserListViewModel: ObservableObject {
     @Published var users: [User] = []

     @Injected(name: "v1") private var userService: UserService

     func loadUsers() {
         self.users = userService.fetchUsers()
     }
 }
 
