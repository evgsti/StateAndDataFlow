//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Евгений on 09.10.2024.
//

import SwiftUI

final class StorageManager {
    @AppStorage("userName") var userName = ""
    @AppStorage("isRegistered") var isRegistered = false
    
    static let shared = StorageManager()
    
    private init() {}
    
    func saveUser(user: User) {
        userName = user.name
        isRegistered = user.isRegistered
    }
    
    func deleteUser() {
        userName = ""
        isRegistered = false
    }
    
    func getUser() -> User {
        return User(name: userName, isRegistered: isRegistered)
    }
}
