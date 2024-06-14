//
//  ViewController.swift
//  covi-pod-test
//
//  Created by covi-ensil on 06/14/2024.
//  Copyright (c) 2024 covi-ensil. All rights reserved.
//

import UIKit
import covi_pod_test

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlert(_ sender: UIButton) {
        EnsilAlert(title: "Is covi-pod-test library working?", confirm: "Yes Yes!") {
            print("covi-pod-test library is working")
        }.show(in: view)
    }
}

