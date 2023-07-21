//
//  ViewCode.swift
//  ExampleApp
//
//  Created by Matheus dos Reis de Jesus on 20/07/23.
//

import Foundation

protocol ViewCode {
    func addSubviews()
    func setupConstraints()
    func setupStyle()
}

extension ViewCode {
    func setup() {
        addSubviews()
        setupConstraints()
        setupStyle()
    }
}
