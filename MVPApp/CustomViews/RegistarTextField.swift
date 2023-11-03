//
//  RegistarTextField.swift
//  MVPApp
//
//  Created by brubru on 27.10.2023.
//

import UIKit


	//MARK: - RegisterTextField
final class RegisterTextField: UITextField {
	
	private let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 40)
	
		//MARK: - Initializers
	init(placeholder: String, isPrivate: Bool = false) {
		super.init(frame: .zero)
		setupTextField(placeholder: placeholder, isPrivate: isPrivate)
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
		//MARK: - Override Methods
	override func textRect(forBounds bounds: CGRect) -> CGRect {
		bounds.inset(by: padding)
	}
	
	override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
		bounds.inset(by: padding)
	}
	
	override func editingRect(forBounds bounds: CGRect) -> CGRect {
		bounds.inset(by: padding)
	}
	
		//MARK: - Private Methods
	private func setupTextField(placeholder: String, isPrivate: Bool) {
		textColor = .white
		tintColor = .white
		
		layer.cornerRadius = 10
		layer.borderColor = UIColor.white.cgColor
		layer.borderWidth = 1.5
		layer.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
		
		attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemCyan])
		font = .boldSystemFont(ofSize: 18)
		heightAnchor.constraint(equalToConstant: 60).isActive = true
		
		if isPrivate {
			isSecureTextEntry = true
		}
	}
}
