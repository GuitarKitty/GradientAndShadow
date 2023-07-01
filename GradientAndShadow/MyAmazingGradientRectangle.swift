//
//  MyAmazingGradientRectangle.swift
//  GradientAndShadow
//
//  Created by Efimenko Vyacheslav Sergeevich on 02.07.2023.
//

import UIKit

final class MyAmazingGradientRectangle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        backgroundColor = .clear
        configureLayer()
    }

    private func configureLayer() {
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 6
        layer.shadowOffset = .init(width: 0, height: 2)
        layer.shadowOpacity = 1
        layer.addSublayer(makeGradientLayer())
    }

    private func makeGradientLayer() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = .init(x: 0.01, y: 0.99)
        gradient.endPoint = .init(x: 0.75, y: 0.5)
        gradient.position = center
        gradient.cornerRadius = 5

        return gradient
    }
}
