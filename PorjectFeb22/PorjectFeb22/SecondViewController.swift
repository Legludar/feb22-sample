//
//  SecondViewController.swift
//  PorjectFeb22
//
//  Created by David on 2/22/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func redKey(_ sender: UIButton) {
        print("red")
        print(sender.tag)
    }
    @IBAction func greenKey(_ sender: UIButton) {
        print("green")
        print(sender.tag)
    }
    @IBAction func yellowKey(_ sender: UIButton) {
        print("yellow")
        print(sender.tag)
    }
    @IBAction func orangeKey(_ sender: UIButton) {
        print("orange")
        print(sender.tag)
    }
    @IBAction func blackKey(_ sender: UIButton) {
        print("black")
        print(sender.tag)
    }
    
}
