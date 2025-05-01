//
//  SwinjectDITests.swift
//  SwinjectDITests
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import Testing
import Swinject
@testable import SwinjectDI

struct SwinjectDITests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        let testContainer = Container()
        
        testContainer.register(UserService.self) { _ in DefaultUserServiceMock() }

         testContainer.register(UserListViewModel.self) { r in
             UserListViewModel(userService: r.resolve(UserService.self)!)
         }

         let viewModel = testContainer.resolve(UserListViewModel.self)!
        #expect(viewModel.users.first?.name == "Mocked User")
    }
}
