//
//  User.swift
//  App
//
//  Created by RastaOnAMission on 11/03/2019.
//

import Vapor
import FluentSQLite

final class User: Codable {
    
    var id: Int?
    var firstName: String
    var lastName: String
    var fullNames: String
    var accountType: String
    
    init(first: String, last: String, account: String) {
        
        firstName = first
        lastName = last
        accountType = account
        
        // Get Full Names from First and Last Name Variables
        fullNames = "\(firstName) \(lastName)"
        
    }
    
}

extension User: SQLiteModel {}

extension User: Content {}

extension User: Migration {}
