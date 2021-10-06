//
//  ViewController.swift
//  MVC-Code
//
//  Created by ruslan on 05.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var myView: View!
    
    override func loadView() {
        super.loadView()
        
        myView = View(frame: .zero)
        view.addSubview(myView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

