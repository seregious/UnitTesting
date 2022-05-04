//
//  DataModel.swift
//  UnitTesting
//
//  Created by Сергей Иванчихин on 04.05.2022.
//

import Foundation

class DataModel {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(100, max(value, 0))
    }
    
    func greaterThanValue(x: Int, y: Int) -> Bool {
        x > y
    }
}
