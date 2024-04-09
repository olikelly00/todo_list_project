//
//  myFirstProjectTests.swift
//  myFirstProjectTests
//
//  Created by Oli Kelly on 09/04/2024.
//


@testable import myFirstProject
import XCTest

final class myFirstProjectTests: XCTestCase {
    // This would be our test case
    func testRegisteringFoodAddsToFoodOptions() {
        //Arrange
        let tastyFood = "salmon"
        let pet = Pet()
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()
        print(foodOptions)
        XCTAssertTrue(foodOptions.contains(tastyFood))
    }
    
    
    
    
    // When I call fizzbuzz(15), I should get the following string back:   "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
    
    func testFizzBuzz15() {
        let result = fizzbuzz(number: 15)
        print(result)
        XCTAssertTrue(result == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz")
    }
    
    func testFizzBuzz132() {
        let result = fizzbuzz(number: 132)
        print(result)
        XCTAssertTrue(result == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz, 26, Fizz, 28, 29, FizzBuzz, 31, 32, Fizz, 34, Buzz, Fizz, 37, 38, Fizz, Buzz, 41, Fizz, 43, 44, FizzBuzz, 46, 47, Fizz, 49, Buzz, Fizz, 52, 53, Fizz, Buzz, 56, Fizz, 58, 59, FizzBuzz, 61, 62, Fizz, 64, Buzz, Fizz, 67, 68, Fizz, Buzz, 71, Fizz, 73, 74, FizzBuzz, 76, 77, Fizz, 79, Buzz, Fizz, 82, 83, Fizz, Buzz, 86, Fizz, 88, 89, FizzBuzz, 91, 92, Fizz, 94, Buzz, Fizz, 97, 98, Fizz, Buzz, 101, Fizz, 103, 104, FizzBuzz, 106, 107, Fizz, 109, Buzz, Fizz, 112, 113, Fizz, Buzz, 116, Fizz, 118, 119, FizzBuzz, 121, 122, Fizz, 124, Buzz, Fizz, 127, 128, Fizz, Buzz, 131, Fizz")
    }
}
