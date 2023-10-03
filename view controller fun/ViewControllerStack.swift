//
//  ViewControllerStack.swift
//  view controller fun
//
//  Created by OLIVER MURRAY on 9/28/23.
//

import UIKit

class ViewControllerStack: UIViewController {
    @IBOutlet weak var redFieldOutlet: UITextField!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    var delegate : ViewController!
    var name: String!
    override func viewDidLoad() {
        super.viewDidLoad()
print(name!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func toThirdAction(_ sender: Any) {
        performSegue(withIdentifier: "toThird", sender: self)
    }
    
    @IBAction func changeAction(_ sender: Any) {
        var name2 = redFieldOutlet.text!
        delegate.pony = name2
        
    }
    
}
