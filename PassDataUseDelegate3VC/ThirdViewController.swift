//
//  ThirdViewController.swift
//  PassDataUseDelegate3VC
//
//  Created by Hiếu Nguyễn on 10/6/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol ThirdViewControllerDelegate: class {
    func speakThird(data: String)
    
}



class ThirdViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    weak var delegate: ThirdViewControllerDelegate?
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if data != nil {
            textField.text = data
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backData(_ sender: UIButton) {
        if textField.text != nil {
            delegate?.speakThird(data: textField.text!)
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        
        
    }
}



