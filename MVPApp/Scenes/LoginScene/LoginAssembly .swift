//
//  LoginAssembly .swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import UIKit

final class LoginAssembly {
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
}

extension LoginAssembly: BaseAssembly {
	func configure(viewController: UIViewController) {
		guard let loginVC = viewController as? LoginViewController else { return }
		let router = LoginRouter(navigationController: navigationController)
		let presenter = LoginPresenter(router: router)
		loginVC.presenter = presenter
		presenter.view = loginVC
	}
}
