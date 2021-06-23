//
//  SalonKadai1Tests.swift
//  SalonKadai1Tests
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import XCTest
@testable import SalonKadai1

class SalonKadai1Tests: XCTestCase {
    class CalculatePresenterSpy : CalculatePresenterOutput {
        var result: String = ""
        
        func displayCalculateResult(_ result: String) {
            self.result = result
        }
    }
    
    func testCalculatePresenter() {
        let spy = CalculatePresenterSpy()
        let model = CalculateModel()
        let presenter = CalculatePresenter(view: spy, model: model)
        
        let numbers = [1, 2, 3, 4, 5]
        presenter.calculateNumbers(numbers)
        
        XCTAssertEqual(spy.result, "15")
    }
    
}
