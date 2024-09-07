//
//  ViewController.swift
//  basicInterationsDomP
//
//  Created by Dominik Penkava on 9/7/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var txtEntered: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeBtn(_ sender: UIButton) {
        label.text = txtEntered.text?.uppercased() ?? "no text entered"
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [], animations: {
         
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.txtEntered.transform = CGAffineTransform(translationX: 0, y: -100)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.txtEntered.transform = CGAffineTransform.identity
            })
            
        })
    }
    
}

