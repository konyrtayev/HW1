//
//  ViewController.swift
//  HW1
//
//  Created by Mukhtar Konyrtayev on 23.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.frame = CGRect(x: 100, y: 300, width: 400, height: 400)
        imageView.backgroundColor = .green
        return imageView
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private var loginField: UITextField = {
        let login = UITextField()
        login.borderStyle = .line
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.black.cgColor
        login.textColor = .black
        let placeholderText = NSAttributedString(string: "Логин", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        login.attributedPlaceholder = placeholderText
        return login
    }()
    
    private var passwordField: UITextField = {
        let password = UITextField()
        password.borderStyle = .line
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.black.cgColor
        password.textColor = .black
        let placeholderText = NSAttributedString(string: "Пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        password.attributedPlaceholder = placeholderText
        return password
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(button)
        setupCostraints()
    }
    
    private func setupCostraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        loginField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/3.5),
            imageView.heightAnchor.constraint(equalToConstant: view.frame.size.width/3.5),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            label.heightAnchor.constraint(equalToConstant: 100),
            
            loginField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5),
            loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 10),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            
            button.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: view.frame.size.width/4),
            button.heightAnchor.constraint(equalToConstant: view.frame.size.width/10)
        ])
        
    }


}

