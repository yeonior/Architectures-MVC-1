//
//  View.swift
//  MVC-Code
//
//  Created by ruslan on 06.10.2021.
//

import UIKit

class View: UIView {
    
    var shouldSetupConstraints = true
    
    var label: UILabel!
    var textField: UITextField!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        label = UILabel(frame: .zero)
        label.backgroundColor = .red
        textField = UITextField(frame: .zero)
        textField.backgroundColor = .blue
        
        self.addSubview(label)
        self.addSubview(textField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        if shouldSetupConstraints {
            
            guard let superview = superview else { return }
            
            self.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                self.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
                self.trailingAnchor.constraint(equalTo: superview.trailingAnchor),
                self.topAnchor.constraint(equalTo: superview.topAnchor),
                self.bottomAnchor.constraint(equalTo: superview.bottomAnchor)
            ])
            
            label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
                label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 4/5),
                label.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1/3)
            ])
            
            textField.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                textField.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 100),
                textField.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 4/5),
                textField.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1/5)
            ])
            
            shouldSetupConstraints = false
        }
        super.updateConstraints()
    }    
}
