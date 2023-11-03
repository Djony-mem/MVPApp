//
//  RegistrationViewController.swift
//  MVPApp
//
//  Created by brubru on 26.10.2023.
//

import UIKit

protocol IRegistrationViewController: AnyObject {
	func render(viewModel: ViewModelRegister)
}

class RegistrationViewController: UIViewController {

	var presenter: IRegistrationPresenter?
	
	private let loginLabel = UILabel()

	override func viewDidLoad() {
		super.viewDidLoad()
		setupView()
		presenter?.render()
	}
}

	//MARK: - Settings View
private extension RegistrationViewController {
	func setupView() {
		view.backgroundColor = .cyan
		
		addSubViews()
		setupLoginLabel()
		
		setupLayout()
	}
}

	//MARK: - Setting
private extension RegistrationViewController {
	func addSubViews() {
		view.addSubview(loginLabel)
	}
	
	func setupLoginLabel() {
		loginLabel.text = "Log In"
		loginLabel.textColor = .black
	}
	
}

	//MARK: - Layout
private extension RegistrationViewController {
	private func setupLayout() {
		loginLabel.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
			loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
	}
}

extension RegistrationViewController: IRegistrationViewController {
	func render(viewModel: ViewModelRegister) {
		loginLabel.text = viewModel.name
	}
}
