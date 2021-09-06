//
//  DatabaseManager.swift
//  InstagramClone
//
//  Created by Rizky Mashudi on 04/09/21.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database(url: "https://instagramclone-7f0af-default-rtdb.asia-southeast1.firebasedatabase.app").reference()
    
    /// check if useername and email is avaliable
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String representing username
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void){
        completion(true)
    }
    
    /// insert new user data to database
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String representing username
    ///     - completion: Async callback for result if database entry succeded
    
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        let key = email.safeDatabaseKey()
        
        database.child(key).setValue(["username": username]) { error, _ in
            if error == nil {
                //succeded
                completion(true)
                return
            } else {
                //failed
                completion(false)
                return
            }
        }
    }
    

    
}
