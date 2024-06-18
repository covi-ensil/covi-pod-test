//
//  ViewController.swift
//  covi-ios-sdk
//
//  Created by covi-ensil on 06/12/2024.
//  Copyright (c) 2024 covi-ensil. All rights reserved.
//

import UIKit
import covi_pod_test
import AnimalFramework

class ViewController: UIViewController {
    
    private let animal = Animals()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animal.append(.cat)
        
        animal.bark(for: .cat)
        animal.bark(for: .dog)
        animal.bark(for: .rion)
    }

    @IBAction func showAlert(_ sender: UIButton) {
        EnsilAlert(title: "Is covi-pod-test library working?", confirm: "YES!!") {
            print("covi-pod-test library is working!")
        }.show(in: view)
    }
}


