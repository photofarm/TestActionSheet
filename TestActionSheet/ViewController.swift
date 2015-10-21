//
//  ViewController.swift
//  TestActionSheet
//
//  Created by sdt5 on 2015. 10. 21..
//  Copyright © 2015년 all4web. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showActionSheet(sender: UIButton) {
        let sheet = UIAlertController(title: "액션시트 스타일", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (acion) -> Void in print("OK 선택") }
        sheet.addAction(okButton)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) { (acion) -> Void in print("Cancel 선택") }
        sheet.addAction(cancelButton)
        
        let desButton = UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive) { (acion) -> Void in print("Destructive 선택") }
        sheet.addAction(desButton)

        self.presentViewController(sheet, animated: true, completion: nil)
    }
    
    @IBAction func showAlert(sender: AnyObject) {
        let dialog = UIAlertController(title: "액션시트 스타일", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        dialog.addTextFieldWithConfigurationHandler{ (textField : UITextField!) -> Void in
            textField.placeholder = "Enter First Name"
        }
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (acion) -> Void in
            let userinput = dialog.textFields![0]
            print(userinput.text)
        }
        dialog.addAction(okButton)
        
        self.presentViewController(dialog, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
