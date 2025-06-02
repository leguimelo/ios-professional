//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Leandro Guimarães on 02/06/25.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let stackView = UIStackView()
    let imageView = UIImageView()
    let label = UILabel()
//    let heroImageView = UIImageView()
//    let titleLabel = UILabel()
    
//    let heroImageName: String
//    let titleText: String
//    
//    init(heroImageName: String, titleText: String) {
//        self.heroImageName = heroImageName
//        self.titleText = titleText
//        
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented - not using storyboards")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension OnboardingViewController {
    func style() {
//        view.backgroundColor = .systemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        // Image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "delorean")
        
        // Label
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.textAlignment = .center
//        titleLabel.font = UIFont.preferredFont(forTextStyle: .title3)
//        titleLabel.adjustsFontForContentSizeCategory = true
//        titleLabel.numberOfLines = 0
//        titleLabel.text = titleText
        
        // Label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = "Bankey is faster, easier to use, and has a brand new look and feel that will make you fell like you are back in 1989."
    }
    
    func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
//        stackView.addArrangedSubview(heroImageView)
//        stackView.addArrangedSubview(titleLabel)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}
