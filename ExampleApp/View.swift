//
//  View.swift
//  ExampleApp
//
//  Created by Matheus dos Reis de Jesus on 20/07/23.
//

import UIKit

protocol ViewDelegate: AnyObject {
    func didTapButton()
}

class View: UIView {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    weak var delegate: ViewDelegate?

    init() {
        // Chamamos um método da UIView para inicialização
        super.init(frame: .zero)

        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(labelText: String, buttonTitle: String) {
        label.text = labelText
        button.setTitle(buttonTitle, for: .normal)
    }
    
    @objc
    private func didTapButton() {
        delegate?.didTapButton()
    }
}

extension View: ViewCode {
    func addSubviews() {
        addSubview(label)
        addSubview(button)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
 
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
            button.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }

    func setupStyle() {
        backgroundColor = .white
    }
}
