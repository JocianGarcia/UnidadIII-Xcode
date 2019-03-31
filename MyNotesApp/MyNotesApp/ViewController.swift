//
//  ViewController.swift
//  MyNotesApp
//
//  Created by LABMAC13 on 22/03/19.
//  Copyright © 2019 LABMAC13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTtitle: UITextField!
    @IBOutlet weak var txtDes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buSave(_ sender: Any) {
        let newNote = MyNotes(context: context)
        newNote.title = txtTtitle.text
        newNote.details = txtDes.text
        newNote.date_save = NSDate() as Date
        
        do{
            ad.saveContext()
            txtTtitle.text = ""
            txtDes.text = ""
        }catch {
            print("Cannot save")
        }
    }
    
}

