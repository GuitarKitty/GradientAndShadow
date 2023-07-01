//
//  ViewController.swift
//  GradientAndShadow
//
//  Created by Efimenko Vyacheslav Sergeevich on 02.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    private var myAmazingRoundedRectangle = MyAmazingGradientRectangle()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        view.addSubview(myAmazingRoundedRectangle)
        myAmazingRoundedRectangle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                myAmazingRoundedRectangle.leadingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 100
                ),
                myAmazingRoundedRectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                myAmazingRoundedRectangle.heightAnchor.constraint(equalToConstant: 100),
                myAmazingRoundedRectangle.widthAnchor.constraint(equalToConstant: 100),
            ]
        )
    }
}

