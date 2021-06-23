//
//  CalculatePresenter.swift
//  SalonKadai1
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import Foundation

protocol CalculatePresenterInput {
    
}

protocol CalculatePresenterOutput : AnyObject {
    
}

final class CalculatePresenter : CalculatePresenterInput {
    
    private weak var view: CalculatePresenterOutput!
    private var model: CalculateModelInput
    
    init(view: CalculatePresenterOutput, model: CalculateModelInput) {
        self.view = view
        self.model = model
    }
}
