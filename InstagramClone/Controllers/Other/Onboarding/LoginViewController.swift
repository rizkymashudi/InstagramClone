//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Rizky Mashudi on 04/09/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    // Username email textfield
    private let usernameEmailField: UITextField = {
        return UITextField()
    }()
    
    // Password textfield
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    // login Button
    private let loginButton: UIButton = {
        return UIButton()
    }()
    
    // terms Button
    private let termsButton: UIButton = {
        return UIButton()
    }()

    // privacy Button
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    // create Account Button
    private let createAccountButton: UIButton = {
        return UIButton()
    }()

    // Header logo
    private let headerView: UIView = {
        return UIView()
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //assign frames
    }
    
    private func addSubviews() {
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(createAccountButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(headerView)
    }
    
    @objc private func didTapLoginButton(){}
    
    @objc private func didTapTermsButton(){}
    
    @objc private func didTapPrivacyButton(){}
    
    @objc private func didTapCreateAccountButton(){}
}
