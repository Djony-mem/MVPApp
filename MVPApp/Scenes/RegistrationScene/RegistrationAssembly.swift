//
//  RegistrationAssembly.swift
//  MVPApp
//
//  Created by brubru on 27.10.2023.
//

import UIKit

final class RegistrationAssembly {
	private let navigationController: UINavigationController
	private let name: String
	
	init(navigationController: UINavigationController, name: String) {
		self.navigationController = navigationController
		self.name = name
	}
}

extension RegistrationAssembly: BaseAssembly {
	func configure(viewController: UIViewController) {
		guard let registrationVC = viewController as? RegistrationViewController  else { return }
		let router = RegistrationRouter(navigationController: navigationController)
		let presenter = RegistrationPresenter(view: registrationVC, router: router, name: name)
		
		registrationVC.presenter = presenter
	}
}
