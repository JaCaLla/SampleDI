//
//  Injected.swift
//  SwinjectDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import Swinject

@propertyWrapper
struct Injected<T> {
    private var service: T

    init(name: String? = nil) {
        if let name = name {
            self.service = DIContainer.shared.container.resolve(T.self, name: name)!
        } else {
            self.service = DIContainer.shared.container.resolve(T.self)!
        }
    }

    var wrappedValue: T {
        service
    }
}
