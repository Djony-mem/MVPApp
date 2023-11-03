//
//  RegistrationPresenter.swift
//  MVPApp
//
//  Created by brubru on 27.10.2023.
//

import Foundation

struct ViewModelRegister {
	let name: String
}

protocol IRegistrationPresenter {
	func render()
}

final class RegistrationPresenter {
	let router: IRegistrationRouter
	private weak var view: IRegistrationViewController!
	private let name: String
	
	init(view: IRegistrationViewController, router: IRegistrationRouter, name: String) {
		self.view = view
		self.router = router
		self.name = name
	}
}

extension RegistrationPresenter: IRegistrationPresenter {
	func render() {
		let viewModel = ViewModelRegister(name: name)
		view.render(viewModel: viewModel)
	}
	
}
