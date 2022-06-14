//
//  ViewController.swift
//  Architecture-MVC-1
//
//  Created by ruslan on 05.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var myView: View!
    var model = Model()
    
    override func loadView() {
        super.loadView()
        
        myView = View(frame: .zero)
        view.addSubview(myView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.label.text = model.labelText
        myView.textField.placeholder = model.textFieldPlaceholder
        myView.button.setTitle(model.buttonTitle, for: .normal)
        myView.button.addTarget(self, action: #selector(buttonDidTapped(_:)), for: .touchUpInside)
    }
    
    @objc
    func buttonDidTapped(_ sender: UIButton) {
        guard let text = myView.textField.text, text != "" else { return }
        model.labelText = text
        myView.label.text = model.labelText
    }
}

