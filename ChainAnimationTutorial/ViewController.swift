//
//  ViewController.swift
//  ChainAnimationTutorial
//
//  Created by Tandem on 24/05/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = "Welcome to company XYZ"
        lblSubTitle.text = "Hello there thanks for downloading this all and giving us a try. Hope you have a nice day."
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc private func handleTap() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.lblTitle.transform = CGAffineTransform(translationX: -30, y: 0)
            }) { (_) in
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                    self.lblTitle.alpha = 0
                    self.lblTitle.transform = self.lblTitle.transform.translatedBy(x: 0, y: -200)
                })
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.lblSubTitle.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.lblSubTitle.alpha = 0
                self.lblSubTitle.transform = self.lblSubTitle.transform.translatedBy(x: 0, y: -200)
            })
        }
        
    }

}

