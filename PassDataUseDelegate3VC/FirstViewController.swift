//
//  ViewController.swift
//  PassDataUseDelegate3VC
//
//  Created by Hiếu Nguyễn on 10/6/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

// Cach 1
//class FirstViewController: UIViewController, ThirdViewControllerDelegate {
//    func speakThird(data: String) {
//        firstLabel.text = data
//    }

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    
    func speakSecond(data: String) {
        firstLabel.text = data
        print("Data from thirdVC: \(data)")
    }
    
    
    @IBOutlet weak var firstLabel: UILabel!
    
    var text: String = "Valkyrie"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstLabel.text = text
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondViewController = segue.destination as? SecondViewController {
            secondViewController.delegate = self
            secondViewController.data = firstLabel.text
        }
    }
    
   
    
}
