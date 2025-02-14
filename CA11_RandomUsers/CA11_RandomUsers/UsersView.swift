//
//  UsersView.swift
//  CA11_RandomUsers
//
//  Created by bota on 14.02.2025.
//

import SwiftUI

struct UsersView: View {
  @StateObject var userData = UserData()

  var body: some View {
    NavigationView {
      List(userData.users) { user in
        Text(user.fullName)
      }
      .navigationTitle("Random Users")
    }
  }
}
    
    
    #Preview {
        UsersView()
    }

