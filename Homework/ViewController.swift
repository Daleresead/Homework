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
    private let mainText = UILabel()
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
            mainText,
            reviewButton,
        ].forEach { imageNotification.addSubview($0) }
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            imageNotification.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 260),
            imageNotification.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 34),
            imageNotification.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -34),
            imageNotification.heightAnchor.constraint(equalToConstant: 402),
            
            titleLabel.topAnchor.constraint(equalTo: imageNotification.topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: imageNotification.centerXAnchor),
            
            mainText.topAnchor.constraint(equalTo: imageNotification.topAnchor, constant: 82),
            mainText.leadingAnchor.constraint(equalTo: imageNotification.leadingAnchor, constant: 16),
            mainText.trailingAnchor.constraint(equalTo: imageNotification.trailingAnchor, constant: -16),
            
            reviewButton.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 36),
            reviewButton.leadingAnchor.constraint(equalTo: imageNotification.leadingAnchor, constant: 16),
            reviewButton.trailingAnchor.constraint(equalTo: imageNotification.trailingAnchor, constant: -16),
            reviewButton.heightAnchor.constraint(equalToConstant: 54),
            
            laterButton.topAnchor.constraint(equalTo: reviewButton.topAnchor, constant: 78),
            laterButton.leadingAnchor.constraint(equalTo: imageNotification.leadingAnchor, constant: 16),
            laterButton.trailingAnchor.constraint(equalTo: imageNotification.trailingAnchor, constant: -16),
            laterButton.heightAnchor.constraint(equalToConstant: 22),
            
            
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
        imageNotification.layer.opacity = 0.7
        imageNotification.clipsToBounds = true
        imageNotification.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Мы ценим ваше мнение!"
        titleLabel.font = .systemFont(ofSize: 24, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mainText.text = "Спасибо, что пользуетесь нашим приложением. Нам очень важно знать ваше мнение, чтобы продолжать улучшать качество и функциональность сервиса. Поделитесь своими впечатлениями или сообщите о проблемах, с которыми вы столкнулись. Ваши отзывы помогают нам становиться лучше каждый день!"
        mainText.font = .systemFont(ofSize: 16, weight: .regular)
        mainText.textColor = .black
        mainText.textAlignment = .center
        mainText.numberOfLines = 0
        mainText.translatesAutoresizingMaskIntoConstraints = false
        
        reviewButton.setTitle("Оставить отзыв", for: .normal)
        reviewButton.setTitleColor(.white, for: .normal)
        reviewButton.backgroundColor = .blue
        reviewButton.layer.cornerRadius = 20
        reviewButton.translatesAutoresizingMaskIntoConstraints = false
        
        laterButton.setTitle("Напомнить позже", for: .normal)
        laterButton.setTitleColor(.blue, for: .normal)
        laterButton.backgroundColor = .white
        laterButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setupBehavior() {}
}


