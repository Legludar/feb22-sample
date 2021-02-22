//
//  ViewController.swift
//  PorjectFeb22
//
//  Created by David on 2/22/21.
//

import UIKit
import NotificationCenter

class MainViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    let redKey = "notificationRed"
    let greenKey = "notificationGreen"
    let yellowKey = "notificationYellow"
    let orangeKey = "notificationOrange"
    let blackKey = "notificationBlack"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createObserver()
    }
    private func createObserver() {
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: redKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: greenKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: yellowKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: orangeKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: blackKey), object: nil)
    }
    deinit {
      NotificationCenter.default.removeObserver(self)
    }
    
    @objc func updateScreen(_ notification: NSNotification) {
      if let tag = notification.userInfo?["tag"] as? Int {
        titleLabel.isHidden = false
        titleLabel.textColor = .black
        switch tag {
        case 0:
          view.backgroundColor = .red
          titleLabel.text = "You've selected red"
        case 1:
          view.backgroundColor = .green
          titleLabel.text = "You've selected green"
        case 2:
          view.backgroundColor = .yellow
          titleLabel.text = "You've selected yellow"
        case 3:
          view.backgroundColor = .orange
          titleLabel.text = "You've selected orange"
        case 4:
          view.backgroundColor = .black
          titleLabel.textColor = .white
          titleLabel.text = "You've selected black"
        default:
          break
        }
      }
    }
    
    
    @IBAction func showSecond(_ sender: UIButton) {
        performSegue(withIdentifier: "show second", sender: self)
    }
    
    

}



