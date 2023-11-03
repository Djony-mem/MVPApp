//
//  LoginRouter.swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import UIKit

protocol ILoginRouter: BaseRouting {}

final class LoginRouter {
	enum Target {
		case registration(name: String)
		case tabBar
	}
	
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
}

extension LoginRouter: ILoginRouter {
	func routeTo(target: Any) {
		guard let registerTarget = target as? LoginRouter.Target else { return }
		
		switch registerTarget {
		case .registration(let name):
			let registrationVC = RegistrationViewController()
			let registerAssembly = RegistrationAssembly(navigationController: navigationController, name: name)
			registerAssembly.configure(viewController: registrationVC)
			
			navigationController.pushViewController(registrationVC, animated: true)
		case .tabBar:
			break
		}
	}
}
