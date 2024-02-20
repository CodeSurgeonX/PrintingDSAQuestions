//
//  ViewController.swift
//  PrintingDSAQuestions
//
//  Created by Shashwat Kashyap on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        RunList.runnableSolutions.forEach({ $0.init().run() })
    }


}

