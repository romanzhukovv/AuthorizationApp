//
//  UserModel.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 17.12.2021.
//

struct User {
    let userName: String
    let password: String
    let avatar: Character
    
    let person: Person
    
    static func getUser() -> User {
        User(userName: "User",
             password: "12345",
             avatar: "👨🏼‍💻",
             person: Person(name: "Roman",
                            surname: "Zhukov",
                            age: 27,
                            job: "Junior iOS Developer",
                            location: "Moscow",
                            hobby: "Footbal"
             )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    
    let age: Int
    let job: String
    let location: String
    let hobby: String
}
