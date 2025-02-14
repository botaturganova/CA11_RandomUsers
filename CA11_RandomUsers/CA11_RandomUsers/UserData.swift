//
//  UserData.swift
//  CA11_RandomUsers
//
//  Created by bota on 14.02.2025.
//

import Foundation
@MainActor
class UserData: ObservableObject {
@Published var users: [User] = []

init() {
Task {
await loadUsers()
}
}

func loadUsers() async {
do {
let users = try await UserFetchingClient.getUsers()
self.users = users
} catch {
print(error)
}
}
}



