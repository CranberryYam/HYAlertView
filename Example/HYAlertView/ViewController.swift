//
//  ViewController.swift
//  HYAlertView
//
//  Created by CranberryYam on 07/24/2018.
//  Copyright (c) 2018 CranberryYam. All rights reserved.
//

import UIKit
import HYAlertView

class ViewController: UIViewController, HYAlertController {
    func alertViewDidClick(_ isOK: Bool) {
        let result = isOK ? "pressed ok button" : "pressed cancel button"
        print(result)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func clickAlertBtn(_ sender: Any) {
        let title = "Caution!"
        let content = "If you delete it, you can't restore it."
        let alert = HYAlertView.init(title, content, nil, nil, nil)
        alert.present(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

