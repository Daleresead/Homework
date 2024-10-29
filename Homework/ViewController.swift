//
//  ViewController.swift
//  Homework
//
//  Created by Анатолий Вакулин on 29.10.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let imageNotification = UIView()
    private let titleLabel = UILabel()
    private let maintext = UILabel()
    private let reviewButton = UIButton()
    private let laterButton = UIButton()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupBehavior()
    }
    
    func embedViews() {
        view.addSubview(imageView)
        imageView.addSubview(imageNotification)
        
        [
            titleLabel,
            maintext,
            reviewButton,
            laterButton
        ].forEach { imageNotification.addSubview($0) }
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            imageNotification.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 280),
            imageNotification.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 34),
            imageNotification.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -34),
            imageNotification.heightAnchor.constraint(equalToConstant: 402)
        ])
    }
    
    func setupAppearance() {
        view.backgroundColor = .white
        
        imageView.image = UIImage(named: "Rectangle")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        
        imageNotification.backgroundColor = .white
        imageNotification.layer.cornerRadius = 20
        imageNotification.clipsToBounds = true
        imageNotification.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Мы ценим ваше мнение!"
        titleLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        titleLabel.textColor = .black
    }
    
    func setupBehavior() {}

}

