//
//  RegistrationRouter.swift
//  MVPApp
//
//  Created by brubru on 27.10.2023.
//

import Foundation
import UIKit

protocol IRegistrationRouter: BaseRouting {}

final class RegistrationRouter {
	enum Target {
		case login
		case tab
	}
	
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
}

extension RegistrationRouter: IRegistrationRouter {
	func routeTo(target: Any) {
		// TODO: закончить переход в обратную сторону.
	}
}
