//
//  ContentView.swift
//  ManualDI
//
//  Created by JAVIER CALATRAVA LLAVERIA on 1/5/25.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel: UserListViewModel

    var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
        }
    }
}
