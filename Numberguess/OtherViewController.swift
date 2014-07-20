//
//  OtherViewController.swift
//  Numberguess
//
//  Created by 刘虓 on 14-7-20.
//  Copyright (c) 2014年 shaw. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet var mySecondTextfield:UITextField
    
    @IBOutlet var myTableView:UITableView
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: "cell")
        cell.textLabel.text = "sucks!"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
