//
//  UserFetchingClient.swift .swift
//  CA11_RandomUsers
//
//  Created by bota on 14.02.2025.
//

import Foundation
struct UserFetchingClient {
  static private let url = URL(string: "https://randomuser.me/api/?results=10&format=pretty")!

    static func getUsers() async throws -> [User] {
    async let (data, _) = URLSession.shared.data(from: url)
    let response = try await JSONDecoder().decode(Response.self, from: data)
    return response.users
    }
    }

