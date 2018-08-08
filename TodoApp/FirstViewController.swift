//
//  FirstViewController.swift
//  TodoApp
//
//  Created by Nguyễn Việt on 8/8/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit

 var list = ["A","B","C","D"]
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mFirstTable: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            list.remove(at: indexPath.row)
            mFirstTable.reloadData()    
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mFirstTable.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
         cell.textLabel?.text = list[indexPath.row]
        return cell
    }

}

