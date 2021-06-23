//
//  CalculateViewController.swift
//  SalonKadai1
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import UIKit

final class CalculateViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    private var presenter: CalculatePresenterInput!
    func inject(presenter: CalculatePresenterInput) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        
    }
    

}

extension CalculateViewController : CalculatePresenterOutput {
    
}
