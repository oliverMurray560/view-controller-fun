//
//  ViewController.swift
//  view controller fun
//
//  Created by OLIVER MURRAY on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    var pony = "x"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.systemPink
        print(pony)
    }
    
    
    @IBAction func manualAction(_ sender: Any) {
        //print("hi")
        view.backgroundColor = UIColor.brown
         pony = textOutlet.text!
        performSegue(withIdentifier: "toRed", sender: self)
    }
    //auto called before segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Next View controller giving access to next view controller
        let nvc = segue.destination as! ViewControllerStack
        nvc.name = pony
        
        nvc.delegate = self
        
    }
    
    
}

