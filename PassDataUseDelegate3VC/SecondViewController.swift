//
//  SecondViewController.swift
//  PassDataUseDelegate3VC
//
//  Created by Hiếu Nguyễn on 10/6/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func speakSecond(data: String)
    
}

class SecondViewController: UIViewController, ThirdViewControllerDelegate {
    func speakThird(data: String) {
        delegate?.speakSecond(data: data)
    }
    
    @IBOutlet weak var secondLabel: UILabel!
    weak var delegate: SecondViewControllerDelegate?
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if data != nil {
            secondLabel.text = data
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdViewController = segue.destination as? ThirdViewController {
            thirdViewController.delegate = self
            thirdViewController.data = secondLabel.text
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
