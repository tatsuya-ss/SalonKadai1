//
//  CalculateModel.swift
//  SalonKadai1
//
//  Created by 坂本龍哉 on 2021/06/23.
//

import Foundation

protocol CalculateModelInput {
    func sumNumbers(_ numbers: [Int]) -> Int
}

final class CalculateModel : CalculateModelInput {
    func sumNumbers(_ numbers: [Int]) -> Int {
        numbers.reduce(0) { $0 + $1 }
    }
}
