//
//  ViewController.swift
//  MVPApp
//
//  Created by brubru on 20.10.2023.
//

import UIKit

protocol ILoginViewController: AnyObject {
	
}

final class LoginViewController: UIViewController {
	
	var presenter: ILoginPresenter?
	
	private let loginLabel = UILabel()
	private let loginTF = RegisterTextField(placeholder: "Enter your name")
	private let registerButton = CustomButton(title: "Registration", backgroundColor: .brown, isShadow: false)

	override func viewDidLoad() {
		super.viewDidLoad()
		setupView()
	}
	
		//MARK: - Actions
	@objc
	private func touchRegistrationButton() {
		presenter?.runRegistriationFlow()
	}
}

	//MARK: - Settings View
private extension LoginViewController {
	func setupView() {
		view.backgroundColor = .cyan
		addSubViews()
		setupLoginLabel()
		setupLoginTF()
		
		addActions()
		
		setupLayout()
	}
}

	//MARK: - Setting
private extension LoginViewController {
	func addSubViews() {
		view.addSubview(loginLabel)
		view.addSubview(loginTF)
		view.addSubview(registerButton)
	}
	
	func setupLoginLabel() {
		loginLabel.text = "Log In"
	}
	
	func setupLoginTF() {
		loginTF.delegate = self
	}
	
	func addActions() {
		registerButton.addTarget(
			self,
			action: #selector (touchRegistrationButton),
			for: .touchUpInside
		)
		
	}
}

	//MARK: - Layout
private extension LoginViewController {
	private func setupLayout() {
		loginLabel.translatesAutoresizingMaskIntoConstraints = false
		loginTF.translatesAutoresizingMaskIntoConstraints = false
		registerButton.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
			loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			loginTF.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30),
			loginTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			loginTF.widthAnchor.constraint(equalToConstant: 200),
			
			registerButton.topAnchor.constraint(equalTo: loginTF.bottomAnchor, constant: 60),
			registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			registerButton.widthAnchor.constraint(equalToConstant: 200)
			
		])
	}
}

extension LoginViewController: UITextFieldDelegate {
	func textFieldDidChangeSelection(_ textField: UITextField) {
		guard let text = textField.text else { return }
		
		presenter?.getName(name: text)
	}
}

extension LoginViewController: ILoginViewController {
	
}
