//
//  ViewControllerStack.swift
//  view controller fun
//
//  Created by OLIVER MURRAY on 9/28/23.
//

import UIKit

class ViewControllerStack: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    
    var name: String!
    override func viewDidLoad() {
        super.viewDidLoad()
print(name)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func toThirdAction(_ sender: Any) {
        performSegue(withIdentifier: "toThird", sender: self)
    }
    

}
