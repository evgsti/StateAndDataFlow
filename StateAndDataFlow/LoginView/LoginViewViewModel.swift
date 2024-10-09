//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    @Published var user = User()
    
    init(user: User = User()) {
        self.user = user
    }
    
    private let storageManager = StorageManager.shared
    
    var isNameValid: Bool {
        user.name.count >= 3
    }
    
    var nameCharacterCount: Int {
        user.name.count
    }
    
    func login() {
        if !user.name.isEmpty {
            let user = User(name: user.name, isRegistered: true)
            storageManager.saveUser(user: user)
        }
        objectWillChange.send()
    }
    
    func logout() {
        storageManager.deleteUser()
        user.name = ""
    }
}
