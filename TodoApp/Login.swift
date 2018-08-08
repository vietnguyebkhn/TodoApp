//
//  ViewController.swift
//  TodoApp
//
//  Created by Nguyễn Việt on 8/8/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit

class Login: UIViewController {

    var username:String = "admin"
    var password:String = "admin"
    @IBOutlet weak var mUserNameLb: UITextField!
    
    @IBOutlet weak var mPassWordLb: UITextField!
    
    @IBAction func mLoginButton(_ sender: UIButton) {
        
        var message:String = ""
        if (checkValid() != 1) {
            if (checkValid() == -1) {
                message = "Nhap Username"
            } else if (checkValid() == -2) {
                message = " Nhap PassWord"
            } else if (checkValid() == -3) {
                message = "Sai Username hoac Password"
            }
        }
        if message != "" {
            let alert = UIAlertController(title: "Thong Bao", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in}))
            self.present(alert, animated: false, completion: nil)
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkValid() -> Int {
        var result:Int  = 1
        if (mUserNameLb.text == ""){
            result = -1
        } else if (mPassWordLb.text == "") {
            result = -2
        } else if (mUserNameLb.text != username || mPassWordLb.text != password) {
            result = -3
        }
        return result
        
    }


}
