//
//  ViewController.swift
//  ExampleApp
//
//  Created by Matheus dos Reis de Jesus on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var myView: View = {
        let view = View()
        view.delegate = self
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        self.view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myView.setup(labelText: "Olá, mundo!", buttonTitle: "Testar")
    }
}

extension ViewController: ViewDelegate {
    func didTapButton() {
       // Nossa ação irá atualizar a View
       myView.setup(labelText: "Sucesso!", buttonTitle: "Testar novamente")
    }
}


