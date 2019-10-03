//
//  ViewController.swift
//  blurrpop
//
//  Created by KartRocket iOSOne on 20/08/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addItemView: UIView!
    
    @IBOutlet weak var VisualEffectView: UIVisualEffectView!
    
    var effect : UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        effect = VisualEffectView.effect
        VisualEffectView.effect = nil
        
        addItemView.layer.cornerRadius = 5
        
        
    }
    
    func animateIn() {
        self.view.addSubview(addItemView)
        addItemView.center = self.view.center
        
        addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addItemView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.VisualEffectView.effect = self.effect
            self.addItemView.alpha = 1
            self.addItemView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut()
    {
        UIView.animate(withDuration: 0.4, animations: {
            self.addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.addItemView.alpha = 0
            self.VisualEffectView.effect = nil
            
        }) { (success: Bool) in
            self.addItemView.removeFromSuperview()
        }
    }
    
   
    @IBAction func addItem(_ sender: Any) {
        
        animateIn()
    }
    @IBAction func dismissPopUp(_ sender: Any) {
        animateOut()
    }
    

}

