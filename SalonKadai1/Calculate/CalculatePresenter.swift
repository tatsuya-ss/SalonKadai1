//
//  CalculatePresenter.swift
//  SalonKadai1
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import Foundation

protocol CalculatePresenterInput {
    func calculateNumbers(_ numbers: [Int])
}

protocol CalculatePresenterOutput : AnyObject {
    func displayCalculateResult(_ result: String)
}

final class CalculatePresenter : CalculatePresenterInput {
        
    private weak var view: CalculatePresenterOutput!
    private var model: CalculateModelInput
    
    init(view: CalculatePresenterOutput, model: CalculateModelInput) {
        self.view = view
        self.model = model
    }
    
    func calculateNumbers(_ numbers: [Int]) {
        let result = model.sumNumbers(numbers)
        let resultString = String(result)
        view.displayCalculateResult(resultString)
    }
}
