//
//  User.swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import Foundation

struct User {
	let login: String
	let password: String
	let person: Person
}

struct Person {
	let name: String
	let age: Int
	let hobby: String
}

