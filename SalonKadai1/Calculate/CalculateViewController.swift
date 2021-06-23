//
//  CalculateViewController.swift
//  SalonKadai1
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import UIKit

final class CalculateViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var presenter: CalculatePresenterInput!
    private func inject(presenter: CalculatePresenterInput) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPresenter()
        setupKeyboard()
    }
    
    private func setupKeyboard() {
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        textField3.keyboardType = .numberPad
        textField4.keyboardType = .numberPad
        textField5.keyboardType = .numberPad
    }
    
    private func setupPresenter() {
        let model = CalculateModel()
        let presenter = CalculatePresenter(view: self, model: model)
        self.inject(presenter: presenter)
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        let number1 = Int(textField1.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0
        let number3 = Int(textField3.text!) ?? 0
        let number4 = Int(textField4.text!) ?? 0
        let number5 = Int(textField5.text!) ?? 0
        let numbers = [number1, number2, number3, number4, number5]
        
        presenter.calculateNumbers(numbers)
    }
}

extension CalculateViewController : CalculatePresenterOutput {
    func displayCalculateResult(_ result: String) {
        resultLabel.text = result
    }
}
