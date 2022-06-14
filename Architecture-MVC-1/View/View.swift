//
//  View.swift
//  Architecture-MVC-1
//
//  Created by ruslan on 06.10.2021.
//

import UIKit

class View: UIView {
    
    var shouldSetupConstraints = true
    
    var label: UILabel!
    var textField: UITextField!
    var button: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        
        label = UILabel(frame: .zero)
        label.backgroundColor = .white
        label.layer.borderWidth = 1.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.cornerRadius = 16.0
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        
        textField = UITextField(frame: .zero)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        
        button = UIButton(frame: .zero)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 16.0
        button.setTitleColor(.label, for: .normal)
        button.setTitleColor(.label.withAlphaComponent(0.5), for: .highlighted)
        
        self.addSubview(label)
        self.addSubview(textField)
        self.addSubview(button)
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
                label.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 4/5)
            ])
            
            textField.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                textField.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 100),
                textField.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 4/5),
                textField.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1/7)
            ])
            
            button.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 200),
                button.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 2/5),
                button.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1/6)
            ])
            
            shouldSetupConstraints = false
        }
        super.updateConstraints()
    }    
}
