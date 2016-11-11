//
//  CounterReducerTests.swift
//  CounterExampleTests
//
//  Created by Bohdan Orlov on 11/11/2016.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import XCTest
import ReSwift
@testable import CounterExample

class CounterReducerTests: XCTestCase {
    let reducer = CounterReducer()
    
    func testIncreaseWithInputNilReturnsOne() {
        XCTAssertEqual(handle(nil, CounterActionIncrease()), 1)
    }
    
    func testDecreaseWithInputNilReturnsMinusOne() {
        XCTAssertEqual(handle(nil, CounterActionDecrease()), -1)
    }
    
    func testIncreaseWithZeroReturnsOne() {
        XCTAssertEqual(handle(0, CounterActionIncrease()), 1)
    }
    
    func testDecreaseWithZeroReturnsMinusOne() {
        XCTAssertEqual(handle(0, CounterActionDecrease()), -1)
    }
    
    func testIncreaseWithPositiveValueReturnsIncrementedByOne() {
        XCTAssertEqual(handle(5, CounterActionIncrease()), 6)
    }
    
    func testDecreaseWithPostiveValueReturnsDecrementedByOne() {
        XCTAssertEqual(handle(8, CounterActionDecrease()), 7)
    }
    
    func testIncreaseWithNegativeValueReturnsIncrementedByOne() {
        XCTAssertEqual(handle(-9, CounterActionIncrease()), -8)
    }
    
    func testDecreaseWithNegativeValueReturnsDecrementedByOne() {
        XCTAssertEqual(handle(-4, CounterActionDecrease()), -5)
    }
    
    func handle(_ inputValue: Int?, _ action: Action) -> Int {
        let appState = inputValue.map { AppState(counter: $0) }
        return reducer.handleAction(action: action, state: appState).counter
    }
}
