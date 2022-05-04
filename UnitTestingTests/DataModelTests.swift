//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Сергей Иванчихин on 04.05.2022.
//

import XCTest
@testable import UnitTesting

class DataModelTests: XCTestCase {
    
    var sut: DataModel!
    
    override func setUp() {
        super.setUp()
        sut = DataModel()
    }
    
    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        // given
        sut.setVolume(to: -1)
        
        //when
        let volume = sut.volume
        
        //then
        XCTAssert(volume == 0, "Lowest volume should be equal zero")
    }
    
    func testHighestVolumeShouldBeZero() {
        // given
        sut.setVolume(to: 101)
        
        //when
        let volume = sut.volume
        
        //then
        XCTAssert(volume == 100, "Highest volume should be equal 100")
    }

    func testPerformanceExample() throws {
        measure {
            sut.setVolume(to: 80)
        }
    }

}
