//
//  LoginPresenter.swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import Foundation

protocol ILoginPresenter {
	func runRegistriationFlow()
	func getName(name: String)
}

final class LoginPresenter {
	weak var view: ILoginViewController?
	let router: ILoginRouter
	private var name = "Nik"
	
	init(router: ILoginRouter) {
		self.router = router
	}
}

extension LoginPresenter: ILoginPresenter {
	func getName(name: String) {
		self.name = name
	}
	
	func runRegistriationFlow() {
		router.routeTo(target: LoginRouter.Target.registration(name: name))
	}
}
