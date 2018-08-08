//
//  SecondViewController.swift
//  TodoApp
//
//  Created by Nguyễn Việt on 8/8/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mInput: UITextField!
    
   
    @IBAction func mAddItemButton(_ sender: UIButton) {
        if (mInput.text != ""){
            list.append(mInput.text!)
            mInput.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

