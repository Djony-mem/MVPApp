//
//  MVXProtocole.swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import UIKit

protocol BaseAssembly {
	func configure(viewController: UIViewController)
}

protocol BaseRouting {
	func routeTo(target: Any)
	init(navigationController: UINavigationController)
}
